import Cocoa

struct Car {
    let model: String
    let seats: Int
    private(set) var currentGear = 0
    
    enum Direction {
        case up, down
    }
    
    mutating func changeGear(direction: Direction) {
        switch direction {
        case .up:
            if currentGear >= 10 {
                print("You're in top gear already!")
            } else {
                currentGear += 1
            }
        case .down:
            if currentGear <= 0 {
                print("You're in neutral and we don't have a reverse gear!")
            } else {
                currentGear -= 1
            }
        }
        print("Now in gear \(currentGear)")
    }
}

var vw = Car(model: "ID5", seats: 5)
vw.changeGear(direction: .down)
vw.changeGear(direction: .up)
vw.changeGear(direction: .up)
vw.changeGear(direction: .down)
