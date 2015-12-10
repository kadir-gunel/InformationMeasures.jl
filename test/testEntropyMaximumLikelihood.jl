d = 1
n = 100
arr = rand(d, n)

# Check entropy is log_base(b) for uniform distribution with b bins
b = sqrt(n) # getfrequencies function uses sqrt(n) bins
@test_approx_eq_eps getentropymaximumlikelihood(arr) log2(b) 0.5
@test_approx_eq_eps getentropymaximumlikelihood(arr, e) log(b) 0.5

println("Maximum likelihood passed")
