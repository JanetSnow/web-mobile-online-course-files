import UIKit
//stored property
let pizzaInInches : Int = 10
//computed property
var numberOfSlices: Int {
    get {
    return pizzaInInches - 4
    }
    set {
    print("numberOfSlices now has a new value, \(newValue)")
    }
}

numberOfSlices = 12


