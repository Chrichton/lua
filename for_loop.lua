-- call f() on each integer from a to b (inclusive).
function for_loop(a, b, f)
  if b > a then
    while a <=b do
      f(a)
      a = a + 1
    end
  else
    while b <= a do
      f(b)
      b = b + 1
    end 
  end
end

function square(n)
  print(n * n)
  return n * n
end

print("sum n*n from 2 to 4", for_loop(2, 4, square))
print("")
print("sum n*n from 4 to 2", for_loop(4, 2, square))