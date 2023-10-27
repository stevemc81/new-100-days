import Cocoa

// Error cases
enum SqrtError: Error {
    case outOfBounds, noRoot
}

func findSqrt(of number: Int) throws -> Int {
    // Return an error if number is < 1 and > 10,000
    if number < 1 || number > 10000 {
        throw SqrtError.outOfBounds
    }
    
    // Check if the given number equals any intger squared
    for i in 1...100 {
        // If so, return that integer
        if i * i == number {
            return i
        }
    }
    
    // No integer squared = number so no root
    throw SqrtError.noRoot
}

// Try it out
do {
    try print(findSqrt(of: 4))
} catch SqrtError.outOfBounds {
    print("Number must be an integer between 1 and 10,000")
} catch SqrtError.noRoot {
    print("This number doesn't have an integer square root")
} catch {
    print("Something went wrong: \(error.localizedDescription)")
}
