const puppeteer = require('puppeteer');
const cheerio = require('cheerio');
const mysql = require('mysql');

const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'peter'
});

db.connect(err => {
  if (err) throw err;
  console.log('MySQL Connected...');
});

const vendorUrls = [
  'https://leafedout.com/cannabis-vendor/greeninflorida',
  'https://leafedout.com/cannabis-vendor/Colorsound',
  'https://leafedout.com/cannabis-vendor/big-chief',
  'https://leafedout.com/cannabis-vendor/greenmidas'
];

async function fetchVendors() {
  const browser = await puppeteer.launch({ headless: false }); // Tarayıcıyı görünür yaparak debug kolaylığı
  const page = await browser.newPage();

  for (const vendorUrl of vendorUrls) {
    await fetchVendorDetails(page, vendorUrl);
  }

  await browser.close();
}

async function fetchVendorDetails(page, url) {
  console.log(`Fetching vendor details for URL: ${url}`);
  try {
    await page.goto(url, { waitUntil: 'networkidle2' });
    const content = await page.content();
    const $ = cheerio.load(content);

    const photoSrcSet = $('img[itemprop="logo"]').attr('srcset');
    let photoUrl = '';
    if (photoSrcSet) {
      const match = photoSrcSet.match(/url=(https[^&]*)/);
      if (match && match[1]) {
        const decodedUrl = decodeURIComponent(match[1]);
        photoUrl = decodedUrl;
      }
    }

    const vendor = {
      url,
      name: $('h1.flex.items-center.font-bold.text-gray-900.text-xl > span').text(),
      username: $('p.text-gray-600').text().replace('@', ''),
      rating: $('span[itemprop="ratingValue"]').text(),
      location: $('span[itemprop="addressRegion"]').text(),
      joinedDate: $('span:contains("Joined")').text().replace('Joined ', ''),
      numberOfFollowing: $('span.text-gray-800.font-medium').text(),
      deliver: $('div:contains("Deliver") > p').text(),
      minOrder: $('div:contains("Min Order") > p').text(),
      products: $('div:contains("Products") > p').text(),
      specials: $('div:contains("Specials") > p').text(),
      additionalComments: $('p[itemprop="description"]').text(),
      photo: photoUrl,
      numberOfReviews: $('span[itemprop="reviewCount"]').text()
    };

    if (vendor.username) {
      await saveVendorToDB(vendor);
    } else {
      console.log(`Vendor username is missing for URL: ${url}`);
    }
  } catch (error) {
    console.error(`Error fetching vendor details for URL ${url}:`, error);
  }
}

function saveVendorToDB(vendor) {
  return new Promise((resolve, reject) => {
    console.log(`Saving vendor to DB: ${vendor.username}`);
    const query = 'SELECT * FROM vendors WHERE username = ?';
    db.query(query, [vendor.username], (err, result) => {
      if (err) {
        console.error(`Error querying DB for vendor ${vendor.username}:`, err);
        return reject(err);
      }
      if (result.length === 0) {
        const insertQuery = 'INSERT INTO vendors SET ?';
        db.query(insertQuery, vendor, (err, res) => {
          if (err) {
            console.error(`Error inserting vendor ${vendor.username} into DB:`, err);
            return reject(err);
          }
          console.log('Vendor added:', vendor.username);
          resolve();
        });
      } else {
        console.log('Vendor already exists:', vendor.username);
        resolve();
      }
    });
  });
}

fetchVendors();
