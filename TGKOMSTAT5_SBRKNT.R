# SOAL 1: Eksponensial, rata-rata 5 menit -> P(X > 5)
mu1 <- 5
lambda1 <- 1 / mu1   # 0.2

(p1 <- pexp(5, rate = lambda1, lower.tail = FALSE))   # e^-1 = 0.3678794

# PDF eksponensial (lambda = 0.2)
x_dexp <- seq(1, 30, by = 1)
y_dexp <- dexp(x_dexp, rate = lambda1)
plot(x_dexp, y_dexp, type = "l", col = "blue", lwd = 2,
     main = "PDF Distribusi Eksponensial (λ=0.2)",
     xlab = "x", ylab = "f(x)")
abline(v = 5, col = "red", lty = 2)

# SOAL 2: Uniform [0, 20] -> varians waktu tunggu
n <- 1000
a <- 0
b <- 20

(var_teori <- (b - a)^2 / 12)   # 400/12 = 33.33333

x <- runif(n, min = a, max = b)

# Nilai density / CDF / quantile
d_values <- dunif(c(0, 10, 20), min = a, max = b)   # = 1/(b-a) = 0.05
p_values <- punif(c(0, 10, 20), min = a, max = b)
q_values <- qunif(c(0.25, 0.5, 0.75), min = a, max = b)
d_values; p_values; q_values

# Plot: histogram sampel + overlay PDF teoritis
hist(x, breaks = 30, probability = TRUE,
     main = "Histogram sampel U(0,20) dengan PDF teoritis",
     xlab = "x")
curve(dunif(x, min = a, max = b), from = a, to = b, add = TRUE, lwd = 2)

# SOAL 3: Eksponensial, rata-rata 10 tahun -> P(X < 5)
lambda3 <- 1 / mu3   # 0.1

(p3 <- pexp(5, rate = lambda3))   # 1 - e^-0.5 = 0.3934693

# PDF eksponensial (lambda = 0.1)
x_dexp <- seq(1, 40, by = 1)
y_dexp <- dexp(x_dexp, rate = lambda3)
plot(x_dexp, y_dexp, type = "l", col = "blue", lwd = 2,
     main = "PDF Distribusi Eksponensial (λ=0.1)",
     xlab = "x (tahun)", ylab = "f(x)")
abline(v = 5, col = "red", lty = 2)

# SOAL 4: Normal(250, 5^2) -> P(X < 240)
n <- 100
mu <- 250
sigma <- 5

# Jawaban
(p4 <- pnorm(240, mean = mu, sd = sigma))   

# Generate sampel
x <- rnorm(n, mean = mu, sd = sigma)

# Statistik sampel
(x_bar <- mean(x))                       # estimator untuk mu
(mle_sigma2 <- mean((x - x_bar)^2))      # MLE untuk sigma^2 (denominator n)
(sd_sample <- sd(x))                     # R menggunakan n-1 (tak-bias)

# Plot: histogram + overlay PDF teoritis
hist(x, breaks = 30, probability = TRUE,
     main = "Histogram sampel N(250, 5^2) dengan PDF teoritis",
     xlab = "x")
curve(dnorm(x, mean = mu, sd = sigma), from = mu - 4 * sigma, to = mu + 4 * sigma,
      add = TRUE, lwd = 2)
abline(v = x_bar, col = "blue", lwd = 2)       # mean sampel
abline(v = mu, col = "red", lwd = 2, lty = 2)  # mean sebenarnya
abline(v = 240, col = "darkgreen", lty = 3)    # batas underweight
legend("topright", legend = c("PDF teoritis", "mean sampel", "mean true", "batas 240 g"),
       lty = c(1, 1, 2, 3), col = c("black", "blue", "red", "darkgreen"), bty = "n")
