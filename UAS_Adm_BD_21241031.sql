use dqlabmartbasic;
-- SOAL 1

select kode_pelanggan, nama_produk, qty, harga, (qty*harga) as total_harga 
from tr_penjualan_dqlab 
having total_harga > 200000;

-- SOAL 2

 select kode_pelanggan, nama_produk, qty, harga, harga*qty as total 
 from tr_penjualan_dqlab 
 where qty > 3 order by total desc;
 
 -- SOAL 3
 
 select nama_produk, tgl_transaksi, month(tgl_transaksi) as bulan, year(tgl_transaksi) as tahun, datediff ('2023-06-30', tgl_transaksi) 
 from tr_penjualan_dqlab where tgl_transaksi <= '2023-06-30';