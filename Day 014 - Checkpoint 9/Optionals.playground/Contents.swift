import Cocoa

func randomNumber(in array: [Int]?) -> Int { array?.randomElement() ?? Int.random(in: 1...100) }

let numbers: [Int]? = nil
print(randomNumber(in: numbers))

let numbers2: [Int]? = [2, 3, 4]
print(randomNumber(in: numbers2))
