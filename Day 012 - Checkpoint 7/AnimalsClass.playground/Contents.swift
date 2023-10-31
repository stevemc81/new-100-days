import Cocoa

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof!")
    }
    
    init() {
        super.init(legs: 4)
    }
}

class Corgi: Dog {
    override func speak() {
        print("Bark!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Grrr!")
    }
}

class Cat: Animal {
    var isTame: Bool
    
    func speak() {
        print("Meow!")
    }
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
}

class Persian: Cat {
    override func speak() {
        print("Prrrr!!")
    }
    
    init() {
        super.init(isTame: true)
    }
}

class Lion: Cat {
    override func speak() {
        print("Hisss!")
    }
    
    init() {
        super.init(isTame: false)
    }
}
