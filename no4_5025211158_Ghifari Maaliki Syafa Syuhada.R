# Nama  : Ghifari Maaliki Syafa Syuhada
# NRP   : 5025211158
# Kelas : Probabilitas dan Statistika C
#
# ---------- Modul 1 Praktikum Probabilitas dan Statistik 2023 ----------
# ----------------------- Distribusi Probabilitas -----------------------

# 4 

# a.
mean <- 45
x1 <- 45
x2 <- 46

sd <- 5

set.seed(0)
rand <- rnorm(100, mean, sd)

cat("P(X1 ≤ x ≤ X2): ", 
    pnorm(x2, mean, sd, lower.tail = TRUE, log.p = FALSE) -
      pnorm(x1, mean,sd, lower.tail = TRUE, log.p = FALSE)
    ,"\n"
    )

cat("z-score: ",
    zs <- (rand - mean(rand)) / sd
    ,"\n"
    )

par(mar = c(2, 2, 2, 2))

plot(zs, main = "Data bangkitan acak", type="b")

# b.Membuat histogram 
hist(rand, breaks = 50, 
     col = "grey", border = "black",
     main = "Histogram Distribusi Normal",
     xlab = "Nilai",
     ylab = "Frekuensi")

# c. Nilai varian
cat("Varian: ", sd^2, "\n")
