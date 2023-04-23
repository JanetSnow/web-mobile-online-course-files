import Foundation

class Animal {
    var name: String
    
    init(n:String){
        name = n
    }
}

class Human: Animal {
    func code() {
        print("Typing away...")
    }
}

class Fish: Animal {
    func breatheUnderWater() {
        print("Breathing under water.")
    }
}

let angela = Human(n: "Angela Yu")
let jack = Human(n: "Jack Bauer")
let nemo = Fish(n: "Nemo")
let num = 12

let neighbours:[Any] = [angela,jack,nemo,num]
//int,String,Double这些都是structure; 而其他的这里的都是class里的instance
//because the array has different classes, they have to find some commonality, which is the Animal superclass.当它们在序列中被引用时，自动出现的不会是之前定义的class, 而是Animal
func findNemo(from animals:[Animal]){
    for animal in animals {
        if animal is Fish {
        print(animal.name)
        let fish = animal as! Fish
//            what this would do is it takes that animal which we already checked and made sure is definitely of type fish, and we use the "!" to cast it down to one of the animals subclasses namelt the Fish class
            fish.breatheUnderWater()
        let fishAnimal = fish as Animal

        }
    }
}
findNemo(from: neighbours)

if let fish = neighbours[1] as? Fish {
    fish.breatheUnderWater()
} else {
    print("failed")
}

//let myDouble = 0.0
//let myDoubleAsAnInt = Int(myDouble)
//now this is not type casting instead it's achieved by initialization
