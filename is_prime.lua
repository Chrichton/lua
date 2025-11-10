function is_prime(num)
  if num <= 1 then
    return false
  end

local sqrt = math.sqrt(num)

  local divisor = 2
  while num % divisor ~= 0 and divisor < sqrt do
    divisor = divisor + 1
  end

  return divisor > sqrt

  -- Solution by devstral llm
  -- for divisor = 2, math.floor(math.sqrt(num)) do
  --   if num % divisor == 0 then
  --     return false
  --   end
  -- end

  -- return true
end

print("is_prime(1):", is_prime(1))
print("is_prime(100):", is_prime(100))
print("is_prime(17):", is_prime(17))