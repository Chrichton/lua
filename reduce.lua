function reduce(max, init, f)
  local acc = init

  for i = init + 1, max do
    acc = f(acc, i)
  end

  return acc
end

function add(previous, next)
  return previous + next
end

print("reduce(10, 1, add)", reduce(10, 1, add))