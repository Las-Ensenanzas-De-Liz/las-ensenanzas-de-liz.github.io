const http = require('http');
const port = process.env.PORT || 3000;

const BLOCKCHAIN_CONTEXT = {
    titular: "J Andres Resendez R.",
    basename: "ensdeliz.base.eth",
    wallet: "0xab4496e1dC2c47eFa60a7d27B282d1df678F1d5E",
    tx_hash: "0x70faf72e4ad10b97f782c9cbada383db5b2d9c462a8a7d7b3550c176a65ec778",
    jaula_protegida: "MX$ 87,000,000.00",
    red: "Base Mainnet",
    estatus: "Sincronizado On-Chain"
};

const server = http.createServer((req, res) => {
    res.writeHead(200, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify(BLOCKCHAIN_CONTEXT, null, 2));
});

server.listen(port, '0.0.0.0', () => { console.log('Oráculo LEDL en línea'); });
