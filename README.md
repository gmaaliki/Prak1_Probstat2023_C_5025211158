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
    dbinom(vals, n, p, log = FALSE)
    ,"\n"
)
```
output
> Distribusi:  0.00123794 0.01179912 0.05060715 0.1286265 0.214545 
> 0.2453858 0.1949028 0.1061524 0.0379412 0.008036156 0.0007659461 

b. Untuk mencari kemungkinan lahirnya tepat 3 bayi, kita dapat menggunakan fungsi dbinom. Karena kita hanya perlu mencari kemugnkinan 1 kasus, maka `x` kita substitusikan dengan jumlah sukses yang kita inginkan yaitu 3.
```
# b. Tepat 3 bayi laki-laki
cat("Kemungkinan tepat 3 bayi laki-laki dilahirkan: ",
    dbinom(3, n, p, log = FALSE)
    ,"\n"
)
```
output
> Kemungkinan tepat 3 bayi laki-laki dilahirkan:  0.1286265

c. Untuk mencari kemungkinan lahirnya kurang dari 3 bayi, kita dapat menggunakan fungsi pbinom(q, size, prob, lower.tail = TRUE, log.p = FALSE). Karena yang kita cari merupakan interval dan bukan 1 nilai saja. `q` kita substitusikan dengan 3 dan parameter lain tetap sama seperti sebelumnya karena tidak berubah
```
# c. Kurang dari 3 bayi laki-laki
cat("Kemungkinan kurang dari 3 bayi laki-laki dilahirkan: ",
    pbinom(3, n, p, lower.tail = TRUE, log = FALSE)
    ,"\n"
)
```
output
> Kemungkinan kurang dari 3 bayi laki-laki dilahirkan:  0.1922707 

d. Untuk mencari kemungkinan lahirnya lebih dari 3 bayi, kita dapat menggunakan fungsi sebelumnya dengan mengganti `lower.tail` menjadi `FALSE`. Hal ini dikarenakan lower.tail mengatur sisi dimana kita menghitung luas bawah kurva. Dalam kasus ini kita ingin menghitung dari kanan karena yang dicari adalah nilai 3 keatas
```
# d. Lebih dari 3 bayi laki-laki 
cat("Kemungkinan lebih dari 3 bayi laki-laki dilahirkan: ",
    pbinom(3, n, p, lower.tail = FALSE, log = FALSE)
    ,"\n"
)
```
output
> Kemungkinan lebih dari 3 bayi laki-laki dilahirkan:  0.8077293

e. Nilai harapan kita dapatkan dengan mengalikan jumlah observasi dengan probabilitasnya. Sedangkan standar deviasi kita dapatkan dengan menggunakan rumus `σ=√npq`
```
# e. Nilai harapan dan standar deviasi
cat("Nilai harapan: ",
    ev <- n*p
    ,"\n"
)

cat("Standar deviasi: ",
    sqrt(n*p*(1-p))
    ,"\n"
)
```
output
> Nilai harapan:  4.88 
> Standar deviasi:  1.580683 

f. Untuk membuat histogram, `R` menyediakan fungsi `hist`. Untuk membuat plotting grafnya kita menggunakan `rbinom(n, size, prob)` yang berfungsi meng-generate titik-titik random yang mendekati distribusi binomial kita. Disini kita akan menggunakan `set.seed(0)` agar output rbinom tetap sama setiap kita run.
```
# f. Membuat histogram
set.seed(0)
rand <- rbinom(1000, n, p)
hist(rand, col = "grey", border = "black",
     main = "Histogram",
     xlab = "Banyak bayi laki-laki",
     ylab = "Frekuensi")
```
>> output 

### Soal 2
Diketahui:  
n = 20  
lambda = 1.8  

a. Soal ini menggunakan distribusi poisson karena menggambarkan peristiwa pada suatu interval waktu. Untuk mencari tahu distribusinya, kita bisa menggunakan `dpois(x, lambda, log = FALSE)` dimana x adalah vector kuantil dari semua yang diobservasi. Karena n = 20 maka x akan diisi dengan 0:20. Sedangkan lambda diisi dengan lambda sesuai soal
```
# a. Distribusi kematian karena kanker tulang
dpois(0:n, l, log = FALSE)
```
output:
> [1] 1.652989e-01 2.975380e-01 2.677842e-01 1.606705e-01 7.230173e-02
> [6] 2.602862e-02 7.808587e-03 2.007922e-03 4.517825e-04 9.035651e-05
> [11] 1.626417e-05 2.661410e-06 3.992115e-07 5.527544e-08 7.106842e-09
> [16] 8.528210e-10 9.594237e-11 1.015860e-11 1.015860e-12 9.623940e-14
> [21] 8.661546e-15

b. Untuk memeriksa ketidakbiasaan 4 kematian akibat kanker tulang pertama-tama kita mesti mencari tahu peluangnya. Hal ini dapat dilakukan dengan fungsi `dpois` seperti sebelumnya dan mensubstitusi `x` dengan 4
```
# b. Memeriksa ketidakbiasaan 4 kematian akibat kanker tulang
cat("P(x=4): ",
    dpois(4, l, log = FALSE)  
    , "\n"
)
```
output:
> P(x=4):  0.07230173 

dapat dilihat bahwa kemungkinannya sangat kecil. Maka apabila hal ini benar-benar terjadi maka akan sangat tidak biasa.

c. Untuk mengetahui peluang paling banyak 4 kematian, kita dapat menggunakan fungsi `ppois(q, lambda, lower.tail = TRUE, log.p = FALSE)` untuk mencari tahu peluang dalam sebuah interval. Kita menghitung dari kiri karena kita sedang mencari peluang paling banyak 4. Jadi `q` disubstitusi dengan 4 sedangkan `lower.tail` dibiarkan `TRUE`
```
# c. Peluang paling banyak 4 kematian akibat kanker tulang
cat("P(x<4): ",
    ppois(4, l, lower.tail = TRUE, log.p = FALSE)
    , "\n"
)
```
output:
> P(x<4):  0.9635933 

d. Untuk mengetahui peluang lebih dari 4 kematian hampir sama seperti sebelumnya. Tetapi karena kita menghitung dari kanan maka `lower.tail` kita ubah `FALSE`
```
# d. Peluang lebih dari 4 kematian akibat kanker tulang
cat("P(x>4): ",
    ppois(4, l, lower.tail = FALSE, log.p = FALSE)
, "\n"
)
```
output:
> P(x>4):  0.03640666

e. Nilai harapan untuk distribusi poisson adalah nilai lambdanya, sedangkan standar deviasinya adalah akar dari lambda
```
# e. Nilai harapan dan standar deviasi
cat(
  "Nilai harapan: ", l, "\n",
  "Standar deviasi: ", sqrt(l)
  ,"\n"
)
```
output:
> Nilai harapan:  1.8 
> Standar deviasi:  1.341641

f. Membuat histogram dengan menggunakan `rpois(n, lambda)` untuk meng-generate data random
```
# f. Membuat histogram
set.seed(0)
rand <- rpois(n, l)
hist(rand, col = "grey", border = "black",
     main = "Histogram Kematian Kanker Tulang Pekerja Pabrik Ban",
     xlab = "Banyak Kematian",
     ylab = "Frekuensi")
```
output:

g. Disini saya menggunakan 2000000 percobaan untuk mensimulasikan kasus ini. Saya akan meng-generate percobaan tersebut dengan `rpois` dan mencari jumlah dimana kematan > 4.
```
# g. Membuat simulasi
rand_sim <- rpois(2000000, l)

cat("Hasil simulasi\n",
    "P(x>4): ", sum(rand_sim > 4),
    "\n"
    )
```
output:
> Hasil simulasi
> P(x>4):  73005 

h. Apabila diubah menjadi persentase sesuai dengan jumlah sampelnya, simulasi yang memiliki 2 juta percobaan menunjukkan bahwa ada kemungkinan 3,65025% untuk kematian diatas 4. Sedangkan menurut 2.d, ada kemungkinan 3,64066% untuk kematian diatas 4. Selisihnya lumayan kecil yaitu sekitar 0,01%. Dari sini saya dapat menyimpulkan kalau percobaan 2d valid tanpa keanehan apapun. Selisih sekecil itu dapat dimaklumi karena menimbang simulasi berjalan dengan 2 juta percobaan.

### Soal 3
Diketahui:  
x = 3  
v = 10  

a. Soal meminta kita untuk menggunakan distribusi chi-square. Fungsi probabilitas chi-square pada `R` adalah menggunakan `dchisq(x, df, ncp = 0, log = FALSE)`. `df` atau degree of freedom dalam soal dilambangkan dengan `v`. Maka kita hanya perlu mensubstitusikannya
```
# a. Distribusi Chi Square
dchisq(x,v, ncp = 0, log = FALSE)
```
>> output

b. Untuk membuat histogram dengan 500 data acak yang kita perlukan terlebih dahulu adalah menggunakan `rchisq(n, df, ncp = 0)` untuk meng-generate titik random. Lalu hasilnya akan dimasukkan sebagai parameter hist. Karena marginnya terlalu besar untuk saya, saya menggunakan fungsi `par()` untuk mengubah ukuran graf histogramnya
```
# b. Membuat histogram dengan 500 data acak
set.seed(0)
rand <- rchisq(500, v, ncp = 0)
par(mar = c(2, 2, 2, 2))
hist(rand, col = "grey", border = "black",
     main = "Histogram Chi Square",
     xlab = "x-axis",
     ylab = "y-axis")
```
>> output

c. Nilai rataan chi-square sama dengan degree of freedomnya. Sedangkan variannya adalah 2*dof
```
# c. Nilai rataan dan varian Chi Square
cat(
  "Nilai rataan: ", v, "\n",
  "Varian: ", 2*v, "\n"
)
```
output
### Soal 4
Diketahui:  
mean = 45 
sd = 6  

a. Dari soal kita tahu bahwa soal ini menggunakan distribusi normal. Disini kita harus mencari beberapa hal. Yang pertama adalah `P(X1 ≤ x ≤ X2` yang dapat dengan mudah kita cari dengan menggunakan `pnorm` caranya adalah dengn menyetting 'lower.tail = TRUE' untuk keduanya kita bisa menghitung nilai pnorm nya dan menguranginyauntuk mendapatkan nilai yang kita mau.
```
cat("P(X1 ≤ x ≤ X2): ", 
    pnorm(x2, mean, sd, lower.tail = TRUE, log.p = FALSE) -
      pnorm(x1, mean,sd, lower.tail = TRUE, log.p = FALSE)
    ,"\n"
    )
```
output:
> P(X1 ≤ x ≤ X2):  0.07925971 

Lalu kita diminta mencari nilai z-score. Maka dari itu, pertama-tama kita menjalankan `rnorm` untuk meng-generate hasil secara random yang nantinya akan kita cari nilai z-scorenya
```
set.seed(0)
rand <- rnorm(100, mean, sd)
cat("z-score: ",
    zs <- (rand - mean(rand)) / sd
    ,"\n"
    )
```
output: 
> z-score:  1.240286 -0.3489018 1.307131 1.249761 0.391973 -1.562618 
> -0.9512355 -0.3173889 -0.02843562 2.381985 0.740925 -0.8216777 -1.170325 
> -0.31213 -0.3218836 -0.4341793 0.229555 -0.9145896 0.4130148 -1.260207 
> -0.2469363 0.3547272 0.1106679 0.7815211 -0.07977522 0.4809395 1.063101 
> -0.7136223 -1.307268 0.02405772 -0.258375 -0.5655567 -0.4559788 -0.6721401 
> 0.7040823 1.129243 0.9694919 -0.4521816 1.215636 -0.3020147 1.735235 
> 0.5380776 -0.4754524 -0.8547117 -1.189239 -1.088259 -1.586451 1.133869 
> 0.8093787 -0.2499971 0.2434689 -0.3993712 2.418696 -0.8180076 -0.07754592 
> 0.2274729 0.5955748 -0.195292 -2.246569 -1.286283 0.3360604 -0.03371393 
> -0.9633176 -0.1384938 -0.8376372 0.219595 -1.447767 0.3432727 0.2257442 
> 0.04261973 -0.003512058 0.2346699 -0.6716785 -0.1418372 0.6414673 1.078301 
> 0.121103 -0.140422 -0.9347368 -1.460255 -0.819758 1.231415 0.7494737 
> -0.2421841 -0.4474787 -0.4416485 0.9743184 -0.2984465 1.23335 0.6240059 
> 1.276644 -0.8959306 -0.01429749 -0.9035402 0.5735906 0.09704919 -0.3048423 
> 1.43332 0.2063511 0.9738755 

Lalu kita diminta untuk membuat plot berdasarkan z-score tersebut
```
par(mar = c(2, 2, 2, 2))

plot(zs, main = "Data bangkitan acak", type="b")
```
output:

b. Untuk membuat histogram cukup dengan memasukkan hasil `rnorm` ke dalam `hist`
```
# b.Membuat histogram 
hist(rand, breaks = 50, 
     col = "grey", border = "black",
     main = "Histogram Distribusi Normal",
     xlab = "Nilai",
     ylab = "Frekuensi")
```
output:

c. Nilai varian dari distribusi normal adalah kuadrat dari standar deviasinya
```
cat("Varian: ", sd^2, "\n")
```
output:
> Varian:  25 
### Soal 5
a. Soal meminta kita untuk menggunakan distribusi T-student. Untuk menghitung probabilitas terjadinya kejadian acak x dengan derajat kebebasan, kita dapat menggunakan fungsi `pt(q, df, ncp, lower.tail = TRUE, log.p = FALSE)` dimana q adalah titiknya dan df adalah derajat kebebasannya. Maka dari itu, `q` kita substitusikan dengan -2.34 dan `df` 6. Karena kita mencari probabilitas kurang dari, `lower.tail` dibiarkan mempunyai nilai `TRUE`.
```
# a. Probabilitas X kurang dari -2.34 dof=6
cat("T-score: ",
      pt(-2.34, 6, lower.tail = TRUE, log.p = FALSE)
    , "\n"
)
```
output:
> T-score:  0.02892197 

b. Untuk menentukan probabilitas terjadinya kejadian acak x lebih dari 1.34 dengan 6 derajat kebebasan kita hanya perlu memodifikasi kode sebelumnya. Nilai `q` kita ganti dengan 1.34 dan `lower.tail` adalah `FALSE` karena kiat menghitung dari kanan
```
# b. Probabilitas X lebih dari 1.34 dof=6
cat("T-score: ",
pt(1.34, 6, lower.tail = FALSE, log.p = FALSE)
, "\n"
)
```
output:
> T-score:  0.11438 

c. Untuk menentukan probabilitas ini, kita perlu memperhatikan bahwa grafiknya akan terpisah menjadi 2 bagian. maka dari itu kita perlu memanggil fungsi `pt` 2 kali. Kita akan menghitung luas kedua ujung secara terpisah lalu keduanya ditambahkan untuk mendapatkan probabilitasnya
```
# c. Probabilitas X kurang dari -1.23 atau lebih dari 1.23, dof=3
cat("T-score: ",
pt(-1.23, 3, lower.tail = TRUE, log.p = FALSE) +
  pt(1.23, 3, lower.tail = FALSE, log.p = FALSE)
, "\n"
)
```
output:  
> T-score:  0.306356 

d. Untuk menentukan probabilitas ini, kita perthatikan bahwa grafiknya sekarang menjadi satu dan berada di tengah. Salah satu cara kita dapat menghitung luasnya adalah dengan menghitung luas ke titik terjauh terlebih dahulu lalu menguranginya dengan luas ke titik terdekat. Maka nilai `lower.tail` dari kedua pemanggilan fungsi harus sama
```
# d. Probabilitas X diantara -0.94 dan 0.94, dof=14
cat("T-score: ",
pt(0.94, 14, lower.tail = TRUE, log.p = FALSE) -
  pt(-0.94, 14, lower.tail = TRUE, log.p = FALSE)
, "\n"
)
```
output:  
> T-score:  0.6368457

e. Untuk mencari nilai t-score, kita dapat menggunakan fungsi `qt(p, df, ncp, lower.tail = TRUE, log.p = FALSE)` dimana p adalah luasan bawah kurva.
```
# e. Nilai t-score dengan dof=5 dan luas=0.0333 di sebelah kiri
cat("T-score: ",
qt(0.0333, 5, lower.tail = TRUE, log.p = FALSE)
, "\n"
)
```
output:  
> T-score:  -2.337342

f. Karena luasan ada di sebelh kanan, maka nilai `lower.tail` diganti `FALSE`. Setelah itu substitusikan luas dan derajat kebebasannya
```
# f. Nilai t-score dengan dof=25 dan luas=0.125 di sebelah kanan
cat("T-score: ",
qt(0.125, 25, lower.tail = FALSE, log.p = FALSE)
, "\n"
)
```
output:  
> T-score:  1.177716

g. Apabila kita perhatikan disini luasannya berada di tengah kurva dengan nilai 0.75. Hal itu berarti sisa luasan di bawah kurva adalah 0.25. Dan karena kurvanya simetris, kita dapat membagi luasnya menjadi 2 untuk mendapatkan luas salah satu sisi yaitu 0.125. Ini berarti titik t-score positif membagi kurva dengan bagian kiri memiliki luas = 1 - 0.125 = 0.875 dan bagian kanan memiliki luas 0.125. Kita dapat menggunakan fungsi `qt` biasa untuk mencaari t-score karena luasnya sudah diketahui
```
# g. Nilai t-score dengan dof=11 dan luas=0.75 diantara t-score dan negatifnya
cat("T-score: ",
qt(0.875, 11, lower.tail = TRUE, log.p = FALSE)
, "\n"
)
```
output:  
> T-score:  1.21446

h. Apabila kita perhatikan disini luasannya berada di ujung-ujung kurva dengan nilai 0.0333. Hal itu bearti sisa luasan di bawah kurva adalah 0.9667. Karena kurvanya simetris, kita dapat membagi luasnya menjadi 2 untuk mendapatkan luas salah satu sisi yaitu 0.01665. Ini berati titik t-score positif membagi kurvadengan bagian kiri memiliki luas = 1 - 0.01665 dan bagian kanan memiliki luas 0.125. Kita sekali lagi dapat menggunakan fungsi `qt` biasa untuk mencari t-score karena luasnya sudah diketahui
```
# h. Nilai t-score dengan dof=23 dan luas=0.0333 diluar t-score dan negatifnya
cat("T-score: ",
qt(0.98335, 23, lower.tail = TRUE, log.p = FALSE)
, "\n"
)
```
output:  
> T-score:  2.264201  
