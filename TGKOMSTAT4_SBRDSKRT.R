#1.Poisson
# Parameter: rata-rata 3 pelanggan per jam
lambda <- 3

# Distribusi Poisson(λ=3)
x <- 0:15
pmf <- dpois(x, lambda)

# Plot PMF
plot(x, pmf, type = 'h', lwd = 3,
     main = 'Poisson(λ=3)', xlab = 'k', ylab = 'P(X=k)')

# Hitung P(X >= 5) = 1 - P(X <= 4)
p_x_ge_5 <- 1 - ppois(4, lambda)
# atau: ppois(4, lambda, lower.tail = FALSE)
p_x_ge_5

#2. Distribusi Bola
# Parameter
N <- 100    # ukuran populasi
K <- 20     # jumlah bola merah di populasi
n <- 10     # ukuran sampel

# Domain k
k <- seq(from = max(0, n + K - N), to = min(n, K))

# PMF: P(X = k)
pmf <- dhyper(k, m = K, n = N - K, k = n)

# Tabel probabilitas
data.frame(k = k, P = pmf)

# Plot PMF
plot(k, pmf, type = "h", lwd = 3,
     main = paste0("Hypergeometric(N=", N, ", K=", K, ", n=", n, ")"),
     xlab = "k (banyak bola merah dalam sampel)",
     ylab = "P(X=k)")

#3. Percobaan Binomial
n <- 20
p <- 0.3

# PMF teoretis
x <- 0:n
pmf <- dbinom(x, size = n, prob = p)

# Simulasi 1.000 percobaan
set.seed(123)
sim <- rbinom(1000, size = n, prob = p)

# Histogram hasil simulasi
hist(sim, breaks = seq(-0.5, n + 0.5, by = 1),
     probability = TRUE,
     main = "Simulasi Binomial vs PMF Teoretis",
     xlab = "k", ylab = "Probability")

# PMF teoretis ditambahkan ke histogram
points(x, pmf, type = "h", lwd = 3)
points(x, pmf, pch = 16)