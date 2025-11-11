function add(previous, next)
  return previous + next
end

function reduce(max, init, f)
  local acc = init

  for i = init + 1, max do
    acc = add(acc, i)
  end

  return acc
end


print("reduce(10, 1, add)", reduce(10, 1, add))