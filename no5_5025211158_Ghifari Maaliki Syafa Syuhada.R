# Nama  : Ghifari Maaliki Syafa Syuhada
# NRP   : 5025211158
# Kelas : Probabilitas dan Statistika C
#
# ---------- Modul 1 Praktikum Probabilitas dan Statistik 2023 ----------
# ----------------------- Distribusi Probabilitas -----------------------

# 5

# a. Probabilitas X kurang dari -2.34 dof=6
cat("T-score: ",
      pt(-2.34, 6, lower.tail = TRUE, log.p = FALSE)
    , "\n"
)

# b. Probabilitas X lebih dari 1.34 dof=6
cat("T-score: ",
pt(1.34, 6, lower.tail = FALSE, log.p = FALSE)
, "\n"
)

# c. Probabilitas X kurang dari -1.23 atau lebih dari 1.23, dof=3
cat("T-score: ",
pt(-1.23, 3, lower.tail = TRUE, log.p = FALSE) +
  pt(1.23, 3, lower.tail = FALSE, log.p = FALSE)
, "\n"
)

# d. Probabilitas X diantara -0.94 dan 0.94, dof=14
cat("T-score: ",
pt(0.94, 14, lower.tail = TRUE, log.p = FALSE) -
  pt(-0.94, 14, lower.tail = TRUE, log.p = FALSE)
, "\n"
)

# e. Nilai t-score dengan dof=5 dan luas=0.0333 di sebelah kiri
cat("T-score: ",
qt(0.0333, 5, lower.tail = TRUE, log.p = FALSE)
, "\n"
)

# f. Nilai t-score dengan dof=25 dan luas=0.125 di sebelah kanan
cat("T-score: ",
qt(0.125, 25, lower.tail = FALSE, log.p = FALSE)
, "\n"
)

# g. Nilai t-score dengan dof=11 dan luas=0.75 diantara t-score dan negatifnya
cat("T-score: ",
qt(0.875, 11, lower.tail = TRUE, log.p = FALSE)
, "\n"
)

# h. Nilai t-score dengan dof=23 dan luas=0.0333 diluar t-score dan negatifnya
cat("T-score: ",
qt(0.98335, 23, lower.tail = TRUE, log.p = FALSE)
, "\n"
)
