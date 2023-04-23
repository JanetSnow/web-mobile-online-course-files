func playgrond1(){
    print("Hello")
}
playgrond1()


func playground2(name: String) {
    print("Hello \(name)")
}
playground2(name: "jammie")


func playground3(age: Int) -> String {
    if age >= 18 {
        return "Old"
    } else {
        return "Young"
    }
}

var aging = playground3(age: 20)
print(aging)
