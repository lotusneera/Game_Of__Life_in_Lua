# Note
This file explains the things present in Lua with examples. Example codes are written in main.lua file. Open the main.lua file and press the run button on the top.

# Comments
```
-- This is how to comment single line in lua
```

```
--[[ This is
how to comment 
multiple lines in Lua
--]]
```

# Hello World for Lua
* Print statements
```
print("Hello World!") -- This will always print in new line
```
```
io.write("Hello World!) -- This will print statement in same line (Used in Loops)
```


# Variables - Global, local, table fields
* Global variables − All variables are considered global unless explicitly declared as a local.

* Local variables − When the type is specified as local for a variable then its scope is limited with the functions inside their scope.

* Table fields − This is a special type of variable that can hold anything except nil including functions.

* Examples - 
```
local d , f = 5 ,10     --declaration of d and f as local variables. 
d , f = 5, 10;          --declaration of d and f as global variables. 
d, f = 10               --[[declaration of d and f as global variables. 
                           Here value of f is nil --]]
```

# Loops - 
* For loop basic syntax
```
for init,max/min value, increment
do
   statement(s)
end
```
Example
```
for i = 10,1,-1 
do 
   print(i) 
end

```
* While loop basic syntax
```
while(condition)
do
   statement(s)
end
```
Example
```
a = 10

while( a < 20 )
do
   print("value of a:", a)
   a = a+1
end
```
# Functions in Lua - Basic syntax
```
optional_function_scope function function_name( argument1, argument2, argument3........, 
argumentn)
function_body
return result_params_comma_separated
end
```

Example :

```
function max(num1, num2)

   if (num1 > num2) then
      result = num1;
   else
      result = num2;
   end

   return result; 
end
```

# Tables 
```
--sample table initialization
mytable = {}

--simple table value assignment
mytable[1]= "Lua"

--removing reference
mytable = nil

-- lua garbage collection will take care of releasing memory
```

# Arrays in Lua - Multidimensional is explained Here
```
-- Initializing the array
array = {}

for i=1,3 do
   array[i] = {}
	
   for j=1,3 do
      array[i][j] = i*j
   end
	
end

-- Accessing the array

for i=1,3 do

   for j=1,3 do
      print(array[i][j])
   end
	
end
```

# Modules 
* Module is like a library that can be loaded using require and has a single global name containing a table. This module can consist of a number of functions and variables.
* The usage of tables in modules helps us in numerous ways and enables us to manipulate the modules in the same way we manipulate any other Lua table. 
* As a result of the ability to manipulate modules, it provides extra features for which other languages need special mechanisms. Due to this free mechanism of modules in Lua, a user can call the functions in Lua in multiple ways.
* In the following example, mymath is the name of the module. Module can be used as class here in lua. Module always return itself so that it can be imported in other files.
```
local mymath =  {}

function mymath.add(a,b)
   print(a+b)
end

function mymath.sub(a,b)
   print(a-b)
end

function mymath.mul(a,b)
   print(a*b)
end

function mymath.div(a,b)
   print(a/b)
end

return mymath	
```
