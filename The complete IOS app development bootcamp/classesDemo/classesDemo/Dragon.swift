//this a default class(can inherit)
class Dragon: Enemy {
   var wingSpan = 2
    
    func talk(speech: String) {
        print("Says: \(speech)")
    }
//    如果想要改变原始的class的func输出的value, 可以进行override, just code the name of that func, override will occur automatically
//    in this case, we can have the new words shown
    override func move() {
        print("Fly forwards.")
    }
//    in the following case, we can have have both the functionality in Enemy but also the functionality in Dragon
    override func attack() {
        super.attack()
        print("Spits fire, does 10 damage")
    }
}
