# Nama  : Ghifari Maaliki Syafa Syuhada
# NRP   : 5025211158
# Kelas : Probabilitas dan Statistika C
#
# ---------- Modul 1 Praktikum Probabilitas dan Statistik 2023 ----------
# ----------------------- Distribusi Probabilitas -----------------------

# 2

n <- c(0:20)
l <- 1.8

# a. Distribusi kematian karena kanker tulang
dpois(n, l, log = FALSE)

# b. Memeriksa ketidakbiasaan 4 kematian akibat kanker tulang
# Untuk alpha = 0.05

# c. Peluang paling banyak 4 kematian akibat kanker tulang
ppois(4, l, lower.tail = TRUE, log.p = FALSE)

# d. Peluang lebih dari 4 kematian akibat kanker tulang
ppois(4, l, lower.tail = FALSE, log.p = FALSE)

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

