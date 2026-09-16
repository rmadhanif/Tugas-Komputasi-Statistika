# Tugas Dataset Iris

# 1. Menampilkan data sepal.length
data(iris)
iris$Sepal.Length


# 2. Menyebutkan tipe data setiap kolom
str(iris)

# 3. Membuat variabel turunan dari Sepal.Width
# Besar jika Sepal.Width > 3
# Kecil jika Sepal.Width <= 3
library(dplyr)
iris <- iris %>%
  mutate(
    turunan = ifelse(iris$Sepal.Width > 3, "Besar", "Kecil")
  )
head(iris)

# 4. Mengubah nama variabel turunan menjadi sepal
names(iris)[names(iris) == "turunan"] <- "sepal"


# 5. Mengambil data sepal besar dari spesies virginica
data_virginica <- filter(iris, sepal == "Besar", Species == "virginica")
print(data_virginica)


# 6. Mengecek jumlah spesies
table(iris$Species)


# 7. Memecah data menjadi 3 data frame berdasarkan spesies
iris_setosa <- iris[iris$Species == "setosa", ]

iris_versicolor <- iris[iris$Species == "versicolor", ]

iris_virginica <- iris[iris$Species == "virginica", ]


# 8. Mengurutkan setiap data frame berdasarkan Sepal.Width
iris_setosa_urut <- iris_setosa[order(iris_setosa$Sepal.Width), ]
iris_versicolor_urut <- iris_versicolor[order(iris_versicolor$Sepal.Width), ]
iris_virginica_urut <- iris_virginica[order(iris_virginica$Sepal.Width), ]
# Menampilkan hasil
print(iris_setosa_urut)
print(iris_versicolor_urut)
print(iris_virginica_urut)
