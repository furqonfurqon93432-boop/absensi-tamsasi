```js
const mysql = require('mysql2');
const db = mysql.createConnection({
  host:'localhost',
  user:'root',
  password:'',
  database:'absensi_sekolah'
});
module.exports = db;
```