
    
    
//    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
//
//    //The number of letters in alphabet equals 26
//    var first = alphabet[Int.random(in: 0 ... 25)]
//    var second = alphabet[Int.random(in: 0 ... 25)]
//    var third = alphabet[Int.random(in: 0 ... 25)]
//    var four = alphabet[Int.random(in: 0 ... 25)]
//    var five = alphabet[Int.random(in: 0 ... 25)]
//    var six = alphabet[Int.random(in: 0 ... 25)]
//
//    var password = first + second + third + four + five + six
//
//    print(password)
    
func greeting() {
    print("hello")
}

func greeting2(whoToGreet: String){
    print("Hello \(whoToGreet)")
//    in this way, we can insert a variable into our string by using string interpolation
}

greeting2(whoToGreet: "Janet")

