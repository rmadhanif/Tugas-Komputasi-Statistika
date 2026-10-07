# SOAL 1: Eksponensial, rata-rata 5 menit -> P(X > 5)
mu1 <- 5
lambda1 <- 1 / mu1   

(p1 <- pexp(5, rate = lambda1, lower.tail = FALSE))  


# SOAL 2: Uniform [0, 20] -> varians waktu tunggu
a <- 0
b <- 20

(var_teori <- (b - a)^2 / 12)   


# SOAL 3: Eksponensial, rata-rata 10 tahun -> P(X < 5)
mu3 <- 10
lambda3 <- 1 / mu3   

(p3 <- pexp(5, rate = lambda3))   


# SOAL 4: Normal(250, 5^2) -> P(X < 240)
mu4 <- 250
sigma4 <- 5

(p4 <- pnorm(240, mean = mu4, sd = sigma4))   