
sim_t_test = function(mu, n = 30, sigma = 5) {
  x = rnorm(n, mean = mu, sd = sigma)
  
  t.test(x, mu = 0) |> 
    broom::tidy() |> 
    select(mu_hat = estimate, p_value = p.value)
}