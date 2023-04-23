//a convention: when you create a class, the name of the file matches exactly the name of your class
//this is a simple standalone class
class Enemy {
    var health = 100
    var attackStrength = 10
    
    func move() {
        print("walk forwards.")
    }
    func attack() {
            print("Land a hit, does \(attackStrength) damage.")
    }
    
}
