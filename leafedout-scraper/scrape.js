const puppeteer = require('puppeteer');
const fs = require('fs');

const states = [
    { lat: 32.3182, lng: -86.9023, name: 'Alabama' },   // Alabama
    { lat: 61.3707, lng: -152.4044, name: 'Alaska' },  // Alaska
    { lat: 34.0489, lng: -111.0937, name: 'Arizona' },  // Arizona
    { lat: 35.2010, lng: -91.8318, name: 'Arkansas' },   // Arkansas
    { lat: 36.7783, lng: -119.4179, name: 'California' },  // California
    { lat: 39.5501, lng: -105.7821, name: 'Colorado' },  // Colorado
    { lat: 41.6032, lng: -73.0877, name: 'Connecticut' },   // Connecticut
    { lat: 38.9108, lng: -75.5277, name: 'Delaware' },   // Delaware
    { lat: 27.9944, lng: -81.7603, name: 'Florida' },   // Florida
    { lat: 32.1656, lng: -82.9001, name: 'Georgia' },   // Georgia
    { lat: 19.8968, lng: -155.5828, name: 'Hawaii' },  // Hawaii
    { lat: 44.0682, lng: -114.7420, name: 'Idaho' },  // Idaho
    { lat: 40.6331, lng: -89.3985, name: 'Illinois' },  // Illinois
    { lat: 40.2672, lng: -86.1349, name: 'Indiana' },  // Indiana
    { lat: 41.8780, lng: -93.0977, name: 'Iowa' },  // Iowa
    { lat: 39.0119, lng: -98.4842, name: 'Kansas' },  // Kansas
    { lat: 37.8393, lng: -84.2700, name: 'Kentucky' },  // Kentucky
    { lat: 30.9843, lng: -91.9623, name: 'Louisiana' },  // Louisiana
    { lat: 45.2538, lng: -69.4455, name: 'Maine' },  // Maine
    { lat: 39.0458, lng: -76.6413, name: 'Maryland' },  // Maryland
    { lat: 42.4072, lng: -71.3824, name: 'Massachusetts' },   // Massachusetts
    { lat: 44.3148, lng: -85.6024, name: 'Michigan' },  // Michigan
    { lat: 46.7296, lng: -94.6859, name: 'Minnesota' },  // Minnesota
    { lat: 32.3547, lng: -89.3985, name: 'Mississippi' },  // Mississippi
    { lat: 37.9643, lng: -91.8318, name: 'Missouri' },   // Missouri
    { lat: 46.8797, lng: -110.3626, name: 'Montana' },  // Montana
    { lat: 41.4925, lng: -99.9018, name: 'Nebraska' },   // Nebraska
    { lat: 38.8026, lng: -116.4194, name: 'Nevada' },  // Nevada
    { lat: 43.1939, lng: -71.5724, name: 'New Hampshire' },  // New Hampshire
    { lat: 40.0583, lng: -74.4057, name: 'New Jersey' },   // New Jersey
    { lat: 34.5199, lng: -105.8701, name: 'New Mexico' },  // New Mexico
    { lat: 43.2994, lng: -74.2179, name: 'New York' },  // New York
    { lat: 35.7596, lng: -79.0193, name: 'North Carolina' },  // North Carolina
    { lat: 47.5515, lng: -101.0020, name: 'North Dakota' },  // North Dakota
    { lat: 40.4173, lng: -82.9071, name: 'Ohio' },   // Ohio
    { lat: 35.0078, lng: -97.0929, name: 'Oklahoma' },   // Oklahoma
    { lat: 43.8041, lng: -120.5542, name: 'Oregon' },  // Oregon
    { lat: 41.2033, lng: -77.1945, name: 'Pennsylvania' },  // Pennsylvania
    { lat: 41.5801, lng: -71.4774, name: 'Rhode Island' },   // Rhode Island
    { lat: 33.8361, lng: -81.1637, name: 'South Carolina' },   // South Carolina
    { lat: 43.9695, lng: -99.9018, name: 'South Dakota' },   // South Dakota
    { lat: 35.5175, lng: -86.5804, name: 'Tennessee' },  // Tennessee
    { lat: 31.9686, lng: -99.9018, name: 'Texas' },   // Texas
    { lat: 39.3200, lng: -111.0937, name: 'Utah' },  // Utah
    { lat: 44.5588, lng: -72.5778, name: 'Vermont' },  // Vermont
    { lat: 37.4316, lng: -78.6569, name: 'Virginia' },   // Virginia
    { lat: 47.7511, lng: -120.7401, name: 'Washington' },  // Washington
    { lat: 38.5976, lng: -80.4549, name: 'West Virginia' },   // West Virginia
    { lat: 43.7844, lng: -88.7879, name: 'Wisconsin' },  // Wisconsin
    { lat: 43.0759, lng: -107.2903, name: 'Wyoming' }   // Wyoming
];

(async () => {
    try {
        const browser = await puppeteer.launch({ headless: true });
        console.log('Browser launched');
        const page = await browser.newPage();
        console.log('New page created');

        let fileIndex = 1;

        for (const state of states) {
            const url = `https://leafedout.com/lists?lat=${state.lat}&lng=${state.lng}`;
            await page.goto(url, { waitUntil: 'networkidle2' });
            console.log(`Page loaded: ${url}`);

            // Sayfanın yüklenmesinden hemen sonra checkbox'ları ayarla
            await page.evaluate(() => {
                const checkboxes = document.querySelectorAll('input[type="checkbox"].jsx-96c252cc32eed8d8');
                checkboxes.forEach((checkbox, index) => {
                    if (index === 0 || index > 1) {
                        if (checkbox.checked) {
                            checkbox.click(); // Tüm checkbox'ları kaldır
                        }
                    } else if (index === 1 && !checkbox.checked) {
                        checkbox.click(); // Sadece Vendors checkbox'ını seç
                    }
                });
            });

            let loadMoreButtonSelector = 'button.jsx-96c252cc32eed8d8';
            let clickCount = 0;
            const maxClicks = 10;

            let allItems = [];

            while (clickCount < maxClicks) {
                console.log('Load More button found, clicking');
                const lastItemBeforeClick = await page.evaluate(() => {
                    const items = document.querySelectorAll('.rounded.relative > a');
                    return items[items.length - 1] ? items[items.length - 1].innerText : null;
                });

                const loadMoreButton = await page.$(loadMoreButtonSelector);
                if (!loadMoreButton) {
                    console.log('Load More button not found, stopping');
                    break;
                }

                await loadMoreButton.click();
                await new Promise(resolve => setTimeout(resolve, 1500)); // Wait for the content to load

                const items = await page.evaluate(() => {
                    return Array.from(document.querySelectorAll('.rounded.relative > a')).map(item => ({
                        name: item.querySelector('h4') ? item.querySelector('h4').innerText : 'Unknown',
                        location: item.querySelector('.text-gray-500.mt-3') ? item.querySelector('.text-gray-500.mt-3').innerText.replace('location_on\n', '').trim() : 'Unknown',
                        link: item.href ? item.href : '#',
                        photo: item.querySelector('.profile-photo img') ? item.querySelector('.profile-photo img').src : 'No photo',
                        lastSeen: item.querySelector('.text-gray-500 > div > span:last-child') ? item.querySelector('.text-gray-500 > div > span:last-child').innerText : 'Unknown'
                    }));
                });

                const lastItemAfterClick = items[items.length - 1] ? items[items.length - 1].name : null;

                if (lastItemBeforeClick === lastItemAfterClick) {
                    console.log('No more new items loaded, stopping');
                    break;
                }

                allItems = items; // Yeni kayıtları ekle
                clickCount++;
            }

            const fileName = `sellers${fileIndex}.json`;
            fs.writeFileSync(fileName, JSON.stringify(allItems, null, 2));
            console.log(`Data written to ${fileName}`);
            fileIndex++;
        }

        await browser.close();
        console.log('Browser closed');
    } catch (error) {
        console.error('Error:', error);
    }
})();
