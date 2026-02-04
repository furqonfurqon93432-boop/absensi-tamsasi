```sql
CREATE DATABASE absensi_sekolah;
USE absensi_sekolah;

CREATE TABLE guru (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nama VARCHAR(100),
  username VARCHAR(50) UNIQUE,
  password VARCHAR(255),
  mapel VARCHAR(100)
);

CREATE TABLE absensi (
  id INT AUTO_INCREMENT PRIMARY KEY,
  guru_id INT,
  nama_siswa VARCHAR(100),
  kelas VARCHAR(50),
  status ENUM('Hadir','Izin','Sakit','Alpa'),
  catatan TEXT,
  tanggal DATE,
  jam TIME,
  FOREIGN KEY (guru_id) REFERENCES guru(id)
);
```