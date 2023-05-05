# Nama  : Ghifari Maaliki Syafa Syuhada
# NRP   : 5025211158
# Kelas : Probabilitas dan Statistika C
#
# ---------- Modul 1 Praktikum Probabilitas dan Statistik 2023 ----------
# ----------------------- Distribusi Probabilitas -----------------------

# 1

n = 10
p = 0.488
vals <- c(0:10)

# a. Distribusi banyak bayi laki-laki
cat("Distribusi: ",
    probs <- c(dbinom(vals, n, p, log = FALSE))
    ,"\n"
)

# b. Tepat 3 bayi laki-laki
cat("Kemungkinan tepat 3 bayi laki-laki dilahirkan: ",
    dbinom(3, n, p, log = FALSE)
    ,"\n"
)

# c. Kurang dari 3 bayi laki-laki
cat("Kemungkinan kurang dari 3 bayi laki-laki dilahirkan: ",
    pbinom(3, n, p, lower.tail = TRUE, log = FALSE)
    ,"\n"
)

# d. Lebih dari 3 bayi laki-laki 
cat("Kemungkinan lebih dari 3 bayi laki-laki dilahirkan: ",
    pbinom(3, n, p, lower.tail = FALSE, log = FALSE)
    ,"\n"
)


# e. Nilai harapan dan standar deviasi
cat("Nilai harapan: ",
    ev <- sum(vals*probs)    
    ,"\n"
)

cat("Nilai harapan: ",
    sqrt(sum((vals - ev)^2 * probs))
    ,"\n"
)

# f. Membuat histogram
set.seed(0)
rand <- rbinom(1000, n, p)
hist(rand, col = "grey", border = "black",
     main = "Histogram",
     xlab = "Banyak bayi laki-laki",
     ylab = "Frekuensi")
