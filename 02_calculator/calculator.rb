def add(x, y)
    x + y
end

def subtract(x, y)
    x - y
end

def sum(array)
    array.inject(0) {|total, i| total + i}
end

def multiply(*numbers)
    numbers.inject(1) {|total, i| total * i}
end

def power(x, y)
    x ** y
end

def factorial(x)
    (1..x).reduce(:*) || 0
end
