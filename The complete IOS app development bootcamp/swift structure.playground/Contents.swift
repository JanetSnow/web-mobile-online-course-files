
//struct Town {
////    we can define the properties of our structure
//    let name = "Angelaland"
//    var citizens = ["Angela","Jack"]
//    var resources = ["Grain": 100, "Ore": 42, "Wool": 75]
////    we can also define the behaviour of our structure， which is called method or function
//    func fortify(){
//        print("Defences increased!")
//    }
//}
//
//var myTown = Town()
//
//print(myTown.citizens)
//print("\(myTown.name) has \(myTown.resources["Grain"]!) bags of grains.")
//
//myTown.citizens.append("Keau Reeves")
//print(myTown.citizens.count)
//
//myTown.fortify()

struct Town {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(name: String, citizens: [String], resources: [String: Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    func fortify(){
        print("Defences increased!")
    }
}

var anotherTown = Town(name: "Nameless Island", citizens: ["Tom"], resources: ["cake": 20])

var ghostTown = Town(name: "Ghosty McGhostface", citizens: [], resources: ["Apple": 100])

print(anotherTown.resources["cake"]!)

ghostTown.fortify()
