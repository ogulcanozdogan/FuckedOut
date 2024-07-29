const puppeteer = require('puppeteer');
const cheerio = require('cheerio');
const mysql = require('mysql');

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'peter',
  charset: 'utf8mb4'
});

db.connect(err => {
  if (err) throw err;
  console.log('MySQL Connected...');
});

async function fetchMenus() {
  const query = 'SELECT * FROM vendors';
  db.query(query, async (err, vendors) => {
    if (err) throw err;

    const browser = await puppeteer.launch({ headless: false }); // Tarayıcıyı görünür yaparak debug kolaylığı

    for (let vendor of vendors) {
      let page = await browser.newPage();
      await page.goto(vendor.url, { waitUntil: 'networkidle2' });

      // Show more butonuna tıklayarak tüm menüleri yükle
      let hasMore = true;
      while (hasMore) {
        try {
          await page.waitForSelector('button.px-4.py-1.rounded-sm.flex.items-center.justify-center.text-sm.border', { timeout: 5000 });
          await page.click('button.px-4.py-1.rounded-sm.flex.items-center.justify-center.text-sm.border');
          await new Promise(resolve => setTimeout(resolve, 5000)); // Verilerin yüklenmesi için bekleme süresi
        } catch (e) {
          hasMore = false;
        }
      }

      const content = await page.content();
      const $ = cheerio.load(content);

      const menuUrls = [];
      $('div.jsx-9031b5f65d876692.menu').each((index, element) => {
        const productUrl = $(element).find('a.jsx-9031b5f65d876692').attr('href');
        if (productUrl) {
          menuUrls.push(`https://leafedout.com${productUrl}`);
        }
      });

      for (let url of menuUrls) {
        await fetchMenuDetails(page, vendor.id, url);
      }

      await page.close();
    }

    await browser.close();
  });
}

async function fetchMenuDetails(page, vendorId, url) {
  console.log(`Fetching menu details for URL: ${url}`);

  async function navigateToPage(url, attempts = 3) {
    for (let attempt = 1; attempt <= attempts; attempt++) {
      try {
        await page.goto(url, { waitUntil: 'networkidle2', timeout: 60000 }); // 60 saniye zaman aşımı süresi
        return;
      } catch (error) {
        console.error(`Attempt ${attempt} failed for URL: ${url}`);
        if (attempt === attempts) {
          throw error;
        }
        await new Promise(resolve => setTimeout(resolve, 5000)); // Bir dahaki denemeden önce 5 saniye bekle
      }
    }
  }

  try {
    await navigateToPage(url);
    const content = await page.content();
    const $ = cheerio.load(content);

    const photos = [];
    $('img[itemprop="image"]').each((index, element) => {
      const srcset = $(element).attr('srcset');
      if (srcset) {
        const match = srcset.match(/url=(https[^&]*)/);
        if (match && match[1]) {
          const decodedUrl = decodeURIComponent(match[1]);
          photos.push(decodedUrl);
        }
      }
    });

    const menu = {
      vendor_id: vendorId,
      name: $('h1[itemprop="name"]').text(),
      category: $('div.text-gray-600.mb-2').text(),
      flavors: $('div.menu__flavors > span.menu__flavor').map((i, el) => $(el).text()).get().join(', '),
      effects: $('div.menu__effects > span.menu__effect').map((i, el) => $(el).text()).get().join(', '),
      description: $('div.menu__description[itemprop="description"]').text(),
      imageUrl: photos.join(', '),
    };

    await saveMenuToDB(menu);
  } catch (error) {
    console.error(`Error fetching menu details for URL ${url}:`, error);
  }
}

function saveMenuToDB(menu) {
  return new Promise((resolve, reject) => {
    console.log(`Saving menu to DB: ${menu.name}`);
    const insertQuery = 'INSERT INTO menus SET ?';
    db.query(insertQuery, menu, (err, res) => {
      if (err) {
        console.error(`Error inserting menu ${menu.name} into DB:`, err);
        return reject(err);
      }
      console.log('Menu added:', menu.name);
      resolve();
    });
  });
}

fetchMenus();
