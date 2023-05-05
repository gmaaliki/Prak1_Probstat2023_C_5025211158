# Nama  : Ghifari Maaliki Syafa Syuhada
# NRP   : 5025211158
# Kelas : Probabilitas dan Statistika C
#
# ---------- Modul 1 Praktikum Probabilitas dan Statistik 2023 ----------
# ----------------------- Distribusi Probabilitas -----------------------

# 3

x <- 3
v <- 10

# a. Distribusi Chi Square
dchisq(x,v, ncp = 0, log = FALSE)

# b. Membuat histogram dengan 500 data acak
set.seed(0)
rand <- rchisq(500, v, ncp = 0)
par(mar = c(2, 2, 2, 2))
hist(rand, col = "grey", border = "black",
     main = "Histogram Chi Square",
     xlab = "x-axis",
     ylab = "y-axis")

# c. Nilai rataan dan varian Chi Square
cat(
  "Nilai rataan: ", v, "\n",
  "Varian: ", 2*v, "\n"
)