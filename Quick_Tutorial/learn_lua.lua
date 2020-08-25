local main = {}  -- module is created here

function main:add(x,y) -- function creation example
  local sum = x + y -- local variable
  return sum
end

function main:writeMultiples(x)

  local multiples = {} -- Array initialization example

  for i=1,10 do
    multiples[i] = x * i
  end

  for i=1,10 do
    io.write(multiples[i], " , ") -- printing in a same line
  end

end

ans = main:add(4,3) -- execute the function
print("Sum is :", ans)
multiples = main:writeMultiples(2)

return main -- module is returned here
