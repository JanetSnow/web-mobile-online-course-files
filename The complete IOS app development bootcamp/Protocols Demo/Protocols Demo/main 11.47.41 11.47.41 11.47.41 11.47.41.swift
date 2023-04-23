//how can we seperate the flying behavior from the bird class? how can we have both classes and structs that can fly?
//we shouldn't use inheritance to get hold of the flying functionality at all.instead we can use protocol.
//总之protocol可以使得不管是class还是struct都可以拥有相同的某些功能，不需要的时候也可以不加
protocol CanFly {
    func fly()
//    it can't have any curly braces and implementation
}

extension CanFly {
    func fly() {
        print("The object takes off into the air.")
    }
}

class Bird {
    var isFemale = true
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in a shell.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("the eagle flaps its wings and lifts off into the sky.")
    }
    
    func soar() {
        print("The glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water.")
    }
}

struct FlyingMuseum {
//    we can even use protocol as a data type
    func flyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
}

struct Airplane: CanFly{
//     func fly() {
//        print("the airplane uses its engine to lift off into the sky.")
//    }
}

let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
let museum = FlyingMuseum()
//museum.flyingDemo(flyingObject: myEagle)
//here, it works because the Eagle class adopts the CanFly protocol. therefore, it's also a CanFly type, which satisfies the data type of this input
myPlane.fly()
