function add(previous, next)
  print(previous + next)
  return previous + next
end

function reduce(max, init, f)
  local previous = init

  for i = init + 1, max do
    previous = add(previous, i)
  end 
end


print("reduce(10, 1, add)", reduce(10, 1, add))