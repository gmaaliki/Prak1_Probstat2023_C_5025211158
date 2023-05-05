# Nama  : Ghifari Maaliki Syafa Syuhada
# NRP   : 5025211158
# Kelas : Probabilitas dan Statistika C
#
# ---------- Modul 1 Praktikum Probabilitas dan Statistik 2023 ----------
# ----------------------- Distribusi Probabilitas -----------------------

# 4 
mean <- 45
x1 <- 44
x2 <- 46

sd <- 5

# a. Menentukan fungsi probabilitas distribusi normal
# z-score
#cat("z1: ", (x1 - mean) / sd, "\n",
#    "z2: ", (x2 - mean) / sd, "\n"
#)
#
#prob <- (pnorm(z2) - pnorm(z1))

set.seed(0)
rand <- rnorm(100, mean, sd)
plot(rand, main = "Scatterpoint")

# b.
hist(rand, breaks = 50, 
     col = "grey", border = "black",
     main = "Histogram Distribusi Normal",
     xlab = "Nilai",
     ylab = "Frekuensi")

# c. Nilai varian
cat("Varian: ", sd^2, "\n")
