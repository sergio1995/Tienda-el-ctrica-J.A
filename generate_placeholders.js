const fs = require('fs');
const path = require('path');

const imagesDir = path.join(__dirname, 'assets', 'images');

if (!fs.existsSync(imagesDir)) {
    fs.mkdirSync(imagesDir, { recursive: true });
}

const images = [
    { name: 'logo_ja.svg', text: 'JA', color: '#007BFF', bg: '#f0f0f0', width: 200, height: 200 },
    { name: 'hero_bg.png', text: 'Hero Background', color: '#ffffff', bg: '#003366', width: 1920, height: 1080 }, // Keeping png ext for hero but content is svg xml for now is tricky. Let's make it an svg and update html.
    { name: 'hero_bg.svg', text: 'Tienda Eléctrica J.A', color: '#ffffff', bg: '#003366', width: 1200, height: 600 },
    { name: 'alambre_12.svg', text: 'Alambre 12', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'alambre_14.svg', text: 'Alambre 14', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'toma_sencillo.svg', text: 'Toma Sencillo', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'toma_doble.svg', text: 'Toma Doble', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'toma_industrial.svg', text: 'Toma Industrial', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'interruptor_sencillo.svg', text: 'Interruptor', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'tubo_pvc.svg', text: 'Tubo PVC', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'plafon_led.svg', text: 'Plafón LED', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'bombillo_led.svg', text: 'Bombillo LED', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'breaker.svg', text: 'Breaker', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'caja_distribucion.svg', text: 'Caja Dist', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'pinza.svg', text: 'Pinza', color: '#333', bg: '#e0e0e0', width: 400, height: 300 },
    { name: 'about_us.svg', text: 'Nosotros', color: '#333', bg: '#d0d0d0', width: 600, height: 400 },
];

images.forEach(img => {
    const svgContent = `
<svg width="${img.width}" height="${img.height}" xmlns="http://www.w3.org/2000/svg">
    <rect width="100%" height="100%" fill="${img.bg}"/>
    <text x="50%" y="50%" font-family="Arial" font-size="24" fill="${img.color}" text-anchor="middle" dy=".3em">${img.text}</text>
</svg>`;

    fs.writeFileSync(path.join(imagesDir, img.name), svgContent);
    console.log(`Generated ${img.name}`);
});
