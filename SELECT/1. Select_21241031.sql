SELECT * FROM dqlabpraktikum2.ms_pelanggan_dqlab;
use dqlabpraktikum2;

show tables;
-- Cek deskripsi tiap tabel
desc ms_pelanggan_dqlab;
desc ms_produk_dqlab;
desc tr_penjualan_dqlab;

-- select 1 kolom dari tabel ms_produk_dqlab
select nama_produk from ms_produk_dqlab;

-- select 1 kolom dari ms_pelanggan 
SELECT nama_pelanggan from ms_pelanggan_dqlab;
SELECT tgl_transaksi from tr_penjualan_dqlab;

-- select 2 atau lebih kolom dari tabel ms_produk_dqlab 
select nama_produk, harga from ms_produk_dqlab;
-- ambil kolom kode pelanggan, tanggal transaksi dan total harga dari tabel tr_penjualan
select kode_pelanggan, tgl_transaksi, harga from tr_penjualan_dqlab;

-- mengambil seluruh kolom dalam tabel
-- mengambil seluruh kolom pada tabel ms_pelanggan_dqlab
select * from ms_pelanggan_dqlab;

-- prefix dan Alias
-- prefix nama tabel
select ms_produk_dqlab.nama_produk from ms_produk_dqlab;
select ms_produk_dqlab.nama_produk, harga from ms_produk_dqlab;

-- prefix dari nama database dan tabel
select dqlabpraktikum2.ms_produk_dqlab.nama_produk from ms_produk_dqlab;

-- Alias dari nama kolom
select nama_produk as np, harga as price from ms_produk_dqlab;
-- Alias dari nama tabel
select nama_produk from ms_produk_dqlab as msp;
-- Alias bertemu dengan prefix
select msp.nama_produk from ms_produk_dqlab as msp;

-- case 1
select mpd.nama_pelanggan, mpd.alamat from ms_pelanggan_dqlab as mpd;
-- case 2
select nama_produk, harga from ms_produk_dqlab;