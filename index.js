const express = require('express');
const app = express();

const PORT = 3099;

app.get('/finalTest', (req, res) => {
    res.send("`นาย วริทธิ์พล หนูเยาว์ 6604305001336 <br> นาย อภิสิทธิ์ พรมลุน 6604305001372");
    });


app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
