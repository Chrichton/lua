function ends_in_3(num)
  return string.sub(num, -1) == "3"
end

print("ends_in_3(321) = ", ends_in_3(321))
