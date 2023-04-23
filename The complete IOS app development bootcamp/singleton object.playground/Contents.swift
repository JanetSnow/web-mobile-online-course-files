import UIKit

class Car {
    var colour = "Red"
    //create a singleton
    static let singletonCar = Car()
}

//a contant that holds a reference to our singleton
let myCar  = Car.singletonCar
myCar.colour = "blue"

let yourCar = Car.singletonCar
print(yourCar.colour)
//it doesn't matter how many constants or variables, or different ways that we point towards this singletonCar; it's always going to be the same copy.

class A {
    init() {
        Car.singletonCar.colour = "Brown"
    }
}

class B {
    init() {
        print(Car.singletonCar.colour)
    }
}

let a = A()
let b = B()
