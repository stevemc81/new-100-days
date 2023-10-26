import Cocoa

print("Using if-else")
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}

print("Using ternary")
for i in 1...100 {
    i.isMultiple(of: 3) && i.isMultiple(of: 5) ? print("FizzBuzz") : i.isMultiple(of: 3) ? print("Fizz") : i.isMultiple(of: 5) ? print("Buzz") : print(i)
}




