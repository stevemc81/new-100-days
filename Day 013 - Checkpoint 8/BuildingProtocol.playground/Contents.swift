import Cocoa

protocol Building {
    var rooms: Int { get }
    var cost: Int { get }
    var agent: String { get }
    func summary()
}

struct House: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    
    func summary() {
        print("This house has \(rooms) rooms, costs £\(cost) and is being sold by \(agent).")
    }
}

struct Office: Building {
    var rooms: Int
    var cost: Int
    var agent: String
    
    func summary() {
        print("This office has \(rooms) rooms, costs £\(cost) and is being sold by \(agent).")
    }
}

let house = House(rooms: 8, cost: 200000, agent: "Bob")
house.summary()
