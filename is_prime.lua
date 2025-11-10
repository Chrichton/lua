function is_prime(num)
  local sqrt = math.sqrt(num)

  local divisor = 2
  while num % divisor ~= 0 and divisor < sqrt do
    divisor = divisor + 1
  end

  return divisor > sqrt
end

print("is_prime(100):", is_prime(100))
print("is_prime(17):", is_prime(17))