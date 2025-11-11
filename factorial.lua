function reduce(max, init, f)
  local acc = init

  for i = init + 1, max do
    acc = f(acc, i)
  end

  return acc
end

function multiply(a, b)
  return a * b
end

function factorial(n)
  return reduce(n, 1, multiply)
end

print ("factorial(3)", factorial(3))
print ("factorial(4)", factorial(4))