-- Tabel Mahasiswa
CREATE TABLE mahasiswa (
    nim VARCHAR(6) PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    alamat TEXT,
    jurusan VARCHAR(100),
    umur INTEGER
);

-- Tabel Mata Kuliah
CREATE TABLE mata_kuliah (
    id INTEGER PRIMARY KEY,
    mata_kuliah VARCHAR(100),
    nim VARCHAR(6) REFERENCES mahasiswa(nim),
    nilai INTEGER,
    dosen_pengajar VARCHAR(100)
);

-- insert tabel Mahasiswa
INSERT INTO mahasiswa (nim, nama, alamat, jurusan, umur) VALUES
('123456', 'John', 'Jl. Merdeka No. 1', 'Teknik Informatika', 21),
('234567', 'Alice', 'Jl. Gatot Subroto', 'Sistem Informasi', 23),
('345678', 'Bob', 'Jl. Sudirman No. 5', 'Teknik Informatika', 20),
('456789', 'Cindy', 'Jl. Pahlawan No. 2', 'Manajemen', 22),
('567890', 'David', 'Jl. Diponegoro No. 3', 'Teknik Elektro', 25),
('678901', 'Emily', 'Jl. Cendrawasih No. 4', 'Manajemen', 24),
('789012', 'Frank', 'Jl. Ahmad Yani No. 6', 'Teknik Informatika', 19);

-- insert tabel Mata Kuliah
INSERT INTO mata_kuliah (id, mata_kuliah, nim, nilai, dosen_pengajar) VALUES
(1, 'Pemrograman Web', '123456', 85, 'Pak Budi'),
(2, 'Basis Data', '234567', 70, 'Ibu Ani'),
(3, 'Jaringan Komputer', '345678', 75, 'Pak Dodi'),
(4, 'Sistem Operasi', '123456', 90, 'Pak Budi'),
(5, 'Manajemen Proyek', '456789', 80, 'Ibu Desi'),
(6, 'Bahasa Inggris', '567890', 85, 'Ibu Eka'),
(7, 'Statistika', '678901', 75, 'Pak Farhan'),
(8, 'Algoritma', '789012', 65, 'Pak Galih'),
(9, 'Pemrograman Java', '123456', 95, 'Pak Budi');


--soal1
UPDATE mahasiswa 
SET alamat = 'Jl. Raya No.5'
WHERE nim = '123456';


select * from mahasiswa;

--soal2
SELECT 
    mahasiswa.nim, 
    mahasiswa.nama, 
    mahasiswa.jurusan, 
    mata_kuliah.dosen_pengajar AS dosen_pembimbing
FROM 
    mahasiswa
JOIN 
    mata_kuliah ON mahasiswa.nim = mata_kuliah.nim
WHERE 
    mahasiswa.jurusan = 'Teknik Informatika';

--soal3
SELECT 
    nama,
    umur
FROM 
    mahasiswa
ORDER BY 
    umur DESC
LIMIT 5;


--soal4 
SELECT 
    mahasiswa.nama, 
    mata_kuliah.mata_kuliah, 
    mata_kuliah.nilai
FROM 
    mahasiswa
JOIN 
    mata_kuliah ON mahasiswa.nim = mata_kuliah.nim
WHERE 
    mata_kuliah.nilai > 70;
