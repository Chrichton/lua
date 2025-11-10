function ends_in_3(num)
  return string.sub(num, -1) == "3"
end

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
end

function find_next_prime_number(number)
  while not is_prime(number) or not ends_in_3(number) do
    number = number + 1
  end

  return number
end

function first_n_prime_numbers(n)
  local number = 2

  for count = 1, n do
    local prime = find_next_prime_number(number)
    print("prime:", prime)
    number = prime + 1
  end
end


first_n_prime_numbers(10)