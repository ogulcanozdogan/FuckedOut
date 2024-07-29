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


const states = [
  { lat: 32.318231399999995, lng: -86.902298, name: "Alabama" }, // Alabama
  { lat: 63.588753, lng: -154.4930619, name: "Alaska" }, // Alaska
  { lat: 34.0489281, lng: -111.09373109999999, name: "Arizona" }, // Arizona
  { lat: 35.20105, lng: -91.8318334, name: "Arkansas" }, // Arkansas
  { lat: 36.778261, lng: -119.4179324, name: "California" }, // California
  { lat: 39.550050700000014, lng: -105.78206740000002, name: "Colorado" }, // Colorado
  { lat: 41.60322070000001, lng: -73.08774900000002, name: "Connecticut" }, // Connecticut
  { lat: 38.9108325, lng: -75.52766989999998, name: "Delaware" }, // Delaware
  { lat: 27.664827400000004, lng: -81.5157535, name: "Florida" }, // Florida
  { lat: 32.157435099999994, lng: -82.90712300000001, name: "Georgia" }, // Georgia
  { lat: 19.898681900000003, lng: -155.6658568, name: "Hawaii" }, // Hawaii
  { lat: 44.0682019, lng: -114.7420408, name: "Idaho" }, // Idaho
  { lat: 40.63312490000001, lng: -89.3985283, name: "Illinois" }, // Illinois
  { lat: 40.55121649999999, lng: -85.60236429999999, name: "Indiana" }, // Indiana
  { lat: 41.87800250000002, lng: -93.097702, name: "Iowa" }, // Iowa
  { lat: 39.011902000000006, lng: -98.4842465, name: "Kansas" }, // Kansas
  { lat: 37.83933319999999, lng: -84.27001789999998, name: "Kentucky" }, // Kentucky
  { lat: 30.519077500000012, lng: -91.5208624, name: "Louisiana" }, // Louisiana
  { lat: 45.253783, lng: -69.4454689, name: "Maine" }, // Maine
  { lat: 39.0457549, lng: -76.64127119999999, name: "Maryland" }, // Maryland
  { lat: 42.4072107, lng: -71.38243739999999, name: "Massachusetts" }, // Massachusetts
  { lat: 44.314844300000004, lng: -85.60236429999999, name: "Michigan" }, // Michigan
  { lat: 46.729553, lng: -94.6858998, name: "Minnesota" }, // Minnesota
  { lat: 32.35466790000001, lng: -89.3985283, name: "Mississippi" }, // Mississippi
  { lat: 37.964252900000005, lng: -91.8318334, name: "Missouri" }, // Missouri
  { lat: 46.87968219999999, lng: -110.36256579999998, name: "Montana" }, // Montana
  { lat: 41.49253740000001, lng: -99.9018131, name: "Nebraska" }, // Nebraska
  { lat: 38.8026097, lng: -116.419389, name: "Nevada" }, // Nevada
  { lat: 43.19385160000001, lng: -71.57239529999998, name: "New Hampshire" }, // New Hampshire
  { lat: 40.0583238, lng: -74.4056612, name: "New Jersey" }, // New Jersey
  { lat: 34.972730500000004, lng: -105.03236349999999, name: "New Mexico" }, // New Mexico
  { lat: 40.71277530000001, lng: -74.0059728, name: "New York" }, // New York
  { lat: 35.759573100000004, lng: -79.01929969999998, name: "North Carolina" }, // North Carolina
  { lat: 47.551492599999996, lng: -101.0020119, name: "North Dakota" }, // North Dakota
  { lat: 40.41728710000001, lng: -82.90712300000001, name: "Ohio" }, // Ohio
  { lat: 35.0077519, lng: -97.092877, name: "Oklahoma" }, // Oklahoma
  { lat: 43.80413339999999, lng: -120.55420120000001, name: "Oregon" }, // Oregon
  { lat: 41.203321600000024, lng: -77.1945247, name: "Pennsylvania" }, // Pennsylvania
  { lat: 41.58009450000001, lng: -71.47742910000001, name: "Rhode Island" }, // Rhode Island
  { lat: 33.83608100000001, lng: -81.16372450000001, name: "South Carolina" }, // South Carolina
  { lat: 43.969514800000006, lng: -99.9018131, name: "South Dakota" }, // South Dakota
  { lat: 35.517491299999996, lng: -86.58044730000002, name: "Tennessee" }, // Tennessee
  { lat: 31.96859879999998, lng: -99.9018131, name: "Texas" }, // Texas
  { lat: 40.760660800000004, lng: -111.8939487, name: "Utah" }, // Utah
  { lat: 44.5588028, lng: -72.57784149999999, name: "Vermont" }, // Vermont
  { lat: 37.43157339999999, lng: -78.65689419999998, name: "Virginia" }, // Virginia
  { lat: 47.751074100000004, lng: -120.7401386, name: "Washington" }, // Washington
  { lat: 38.59762619999999, lng: -80.4549026, name: "West Virginia" }, // West Virginia
  { lat: 43.78443970000001, lng: -88.7878678, name: "Wisconsin" }, // Wisconsin
  { lat: 43.07596780000001, lng: -107.2902839, name: "Wyoming" } // Wyoming
];

async function fetchVendors() {
  const browser = await puppeteer.launch({ headless: false }); // Tarayıcıyı görünür yaparak debug kolaylığı
  const page = await browser.newPage();

  for (let state of states) {
    console.log(`Fetching vendors for state: ${state.name}`);
    await page.goto(`https://leafedout.com/lists?lat=${state.lat}&lng=${state.lng}`, { waitUntil: 'networkidle2' });

    // Checkboxları ayarla
    await page.evaluate(() => {
      const checkboxes = document.querySelectorAll('input[type="checkbox"]');
      if (checkboxes.length >= 4) {
        checkboxes[0].click(); // 1. checkbox
        checkboxes[2].click(); // 3. checkbox
        checkboxes[3].click(); // 4. checkbox
      }
    });

    // Checkboxların seçilmesinden sonra 5 saniye bekle
    await new Promise(resolve => setTimeout(resolve, 5000));

    let vendorLinks = [];
    let lastVendorCount = 0;
    let loadMoreVisible = true;

    while (loadMoreVisible) {
      const content = await page.content();
      const $ = cheerio.load(content);

      // Son kaydın ismini al
      const lastVendor = $('div.rounded.relative > a').last().text();

      try {
        await page.waitForSelector('button.jsx-96c252cc32eed8d8.flex.items-center.justify-center.text-gray-500.w-full.mt-3', { timeout: 5000 });
        await page.click('button.jsx-96c252cc32eed8d8.flex.items-center.justify-center.text-gray-500.w-full.mt-3');
        await new Promise(resolve => setTimeout(resolve, 3000)); // Verilerin yüklenmesi için bekleme süresi

        const newContent = await page.content();
        const $new = cheerio.load(newContent);

        // Yeni kaydın ismini al
        const newLastVendor = $new('div.rounded.relative > a').last().text();

        // Yeni kayıt gelmemişse, loadMoreVisible'ı false yap
        if (newLastVendor === lastVendor) {
          loadMoreVisible = false;
        }

        $new('div.rounded.relative > a').each((index, element) => {
          const vendorLink = $new(element).attr('href');
          if (vendorLink && !vendorLinks.includes(vendorLink)) {
            vendorLinks.push(`https://leafedout.com${vendorLink}`);
          }
        });

        console.log(`Found ${vendorLinks.length} vendors so far for state: ${state.name}`);

        lastVendorCount = vendorLinks.length;

      } catch (e) {
        console.error(`Error while clicking load more:`, e);
        loadMoreVisible = false;
      }
    }

    console.log(`Total vendors found for state ${state.name}: ${vendorLinks.length}`);

    // Vendor detaylarını kaydetme
    for (const vendorUrl of vendorLinks) {
      await fetchVendorDetails(page, vendorUrl);
    }
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
      photo: photoUrl
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
