# Nama  : Ghifari Maaliki Syafa Syuhada
# NRP   : 5025211158
# Kelas : Probabilitas dan Statistika C
#
# ---------- Modul 1 Praktikum Probabilitas dan Statistik 2023 ----------
# ----------------------- Distribusi Probabilitas -----------------------

# 2

n <- 20
l <- 1.8

# a. Distribusi kematian karena kanker tulang
dpois(0:n, l, log = FALSE)

# b. Memeriksa ketidakbiasaan 4 kematian akibat kanker tulang
cat("P(x=4): ",
    dpois(4, l, log = FALSE)  
    , "\n"
)

# c. Peluang paling banyak 4 kematian akibat kanker tulang
cat("P(x<4): ",
    ppois(4, l, lower.tail = TRUE, log.p = FALSE)
    , "\n"
)

# d. Peluang lebih dari 4 kematian akibat kanker tulang
cat("P(x>4): ",
    ppois(4, l, lower.tail = FALSE, log.p = FALSE)
, "\n"
)

# e. Nilai harapan dan standar deviasi
cat(
  "Nilai harapan: ", l, "\n",
  "Standar deviasi: ", sqrt(l)
  ,"\n"
)

# f. Membuat histogram
set.seed(0)
rand <- rpois(n, l)
hist(rand, col = "grey", border = "black",
     main = "Histogram Kematian Kanker Tulang Pekerja Pabrik Ban",
     xlab = "Banyak Kematian",
     ylab = "Frekuensi")

# g. Membuat simulasi
rand_sim <- rpois(2000000, l)

cat("Hasil simulasi\n",
    "P(x>4): ", sum(rand_sim > 4),
    "\n"
    )
