local function div(x,y)
return x/y
end

local function sum(x,y)
return x+y
end

local valuetable = {1,1}

local functiontable = {div, sum}

local indextable = {1,2,3,4,5,6,7,8,9,10}

local function All(values, functions, indexset)
local output = 0

if #values == #functions then
for ii = #indexset, 1, -1 do
for i = #functions, 1, -1 do
if i == #functions and ii == #indexset then
output = values[i]
else
output = functions[i](values[i],output)
end
end
end
return output
else
return "Unequal table lengths"
end
end

print(All(valuetable, functiontable, indextable))

