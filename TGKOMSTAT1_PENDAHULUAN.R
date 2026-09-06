#TUGAS KOMPUTASI STATISTIKA

#1. Vector Numeric
v_num <- c(2.7, 1.4, 5.6, 9.8, 3.3)
v_num

#2. Vector Integer 
v_int <- c(5L, 6L, 7L, 8L, 9L)
v_int

#3. Vector Logical
v_log <- c(TRUE, FALSE, FALSE, TRUE, FALSE)
v_log

#4. Matrix
matriks <- matrix(1:16, nrow = 4, ncol = 4)
matriks

#5. Array
ar <- array(1:32, dim = c(2,2,2,2,2))
ar

#6. Data Frame
data_mahasiswa <- data.frame(
  Jurusan = c("Statistika", "Teknik Sipil", "Informatika", "Teknik Kimia"),
  IPK = c(3.75, 3.42, 3.80, 3.55),
  Beasiswa = c(TRUE, FALSE, TRUE, FALSE),
  Organisasi = c(TRUE, TRUE, FALSE, TRUE)
)
data_mahasiswa

# 7. LIST

# List Satu
list_satu <- list(
  vec_num = c(4.6, 3.7, 8.2),
  vec_int = c(1L, 2L, 3L),
  vec_log = c(TRUE, FALSE, FALSE),
  
  data_film = data.frame(
    Judul = c("Swing Girls", "Phantom Thread", "Sentimental Value", "Interstellar"),
    Rating = c(4.8, 4.5, 3.2, 4.7),
    Favorit = c(TRUE, TRUE, FALSE, TRUE),
    Sudah_Ditonton = c(TRUE, TRUE, TRUE, FALSE)
  )
)
list_satu

# List Dua
list_dua <- list(
  vect_num = v_num,
  vect_int = v_int,
  vect_log = v_log,
  data_frame = data_mahasiswa,
  list_st = list_satu
)
list_dua