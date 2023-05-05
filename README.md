# Praktikum Modul 1 Probstat
Nama : Ghifari Maaliki Syafa Syuhada  
NRP  : 5025211158  
Kelas: C  

### Soal 1
Diketahui:  
n = 10  
p = 0.488  

a. Dapat kita lihat bahwa pada soal ini kita menggunakan distribusi binomial karena hanya ada 2 kemungkinan jenis kelamin bayi. Untuk mencari distribusi banyak bayi laki-laki kita dapat menggunakan fungsi `dbinom(x, size, prob, log = FALSE)`. `x` adalah vector quantile-nya, karena kita ingin mencari distribusinya maka x akan diganti dengan 0:10 yang akan disimpan pada variabel `vals`. Sedangkan size adalah jumlah observasi, prob adalah probabilitas sukses. Kita hanya perlu mensubstitusikan ketiga nilai tersebut kedalam fungsi.
```
# a. Distribusi banyak bayi laki-laki
cat("Distribusi: ",
    probs <- c(dbinom(vals, n, p, log = FALSE))
    ,"\n"
)
```
>> output

b. Untuk mencari kemungkinan lahirnya tepat 3 bayi, kita dapat menggunakan fungsi dbinom. Karena kita hanya perlu mencari kemugnkinan 1 kasus, maka `x` kita substitusikan dengan jumlah sukses yang kita inginkan yaitu 3.
```
# b. Tepat 3 bayi laki-laki
cat("Kemungkinan tepat 3 bayi laki-laki dilahirkan: ",
    dbinom(3, n, p, log = FALSE)
    ,"\n"
)
```
>> output

c. Untuk mencari kemungkinan lahirnya kurang dari 3 bayi, kita dapat menggunakan fungsi pbinom(q, size, prob, lower.tail = TRUE, log.p = FALSE). Karena yang kita cari merupakan interval dan bukan 1 nilai saja. `q` kita substitusikan dengan 3 dan parameter lain tetap sama seperti sebelumnya karena tidak berubah
```
# c. Kurang dari 3 bayi laki-laki
cat("Kemungkinan kurang dari 3 bayi laki-laki dilahirkan: ",
    pbinom(3, n, p, lower.tail = TRUE, log = FALSE)
    ,"\n"
)
```
>> output

d. 
### Soal 2
### Soal 3
### Soal 4
### Soal 5

