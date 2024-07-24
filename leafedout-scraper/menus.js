const puppeteer = require('puppeteer');
const mysql = require('mysql2/promise');

(async () => {
    // Veritabanı bağlantısı
    const connection = await mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'sellers_db'
    });

    console.log('Veritabanına bağlanıldı');

    // Tüm satıcıları çek
    const [sellers] = await connection.execute('SELECT id, link FROM sellers');
    console.log('Satıcılar çekildi');

    const browser = await puppeteer.launch({ headless: true });
    const page = await browser.newPage();

    for (const seller of sellers) {
        const menuUrl = `${seller.link}/menus`;
        await page.goto(menuUrl, { waitUntil: 'networkidle2' });
        console.log(`Sayfa yüklendi: ${menuUrl}`);

        const menus = await page.evaluate(() => {
            return Array.from(document.querySelectorAll('a[itemprop="url"]')).map(menu => ({
                title: menu.querySelector('h2[itemprop="name"]') ? menu.querySelector('h2[itemprop="name"]').innerText : 'Unknown',
                price: menu.querySelector('meta[itemprop="price"]') ? menu.querySelector('meta[itemprop="price"]').content : 'Unknown',
                image: menu.querySelector('img[itemprop="image"]') ? menu.querySelector('img[itemprop="image"]').src : 'No image',
                link: menu.href ? menu.href : '#'
            }));
        });

        for (const menu of menus) {
            // Veritabanına menü kaydet
            try {
                const [result] = await connection.execute(
                    'INSERT INTO menus (vendor_id, title, price, image, link) VALUES (?, ?, ?, ?, ?)',
                    [seller.id, menu.title, menu.price, menu.image, menu.link]
                );
                console.log(`Menü eklendi: ${menu.title}, ${menu.price}, ${menu.image}, ${menu.link}`);
            } catch (error) {
                console.error('Veritabanına ekleme hatası:', error.message);
            }
        }
    }

    await browser.close();
    await connection.end();
    console.log('Browser kapatıldı ve veritabanı bağlantısı sonlandırıldı');
})();