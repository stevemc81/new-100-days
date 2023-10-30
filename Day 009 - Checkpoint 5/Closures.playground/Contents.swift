import Cocoa

// Input
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

// Transform the array
let newNumbers = luckyNumbers
    .filter { !$0.isMultiple(of: 2) }
    .sorted()
    .map { "\($0) is a lucky number" }

// Print out the new array
for i in 0...newNumbers.count - 1 {
    print(newNumbers[i])
}
