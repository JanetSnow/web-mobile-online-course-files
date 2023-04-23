
//let myOptional: String?

//myOptional = nil

//let text:String = myOptional 这样不成立，因为myOptional is an optional String,有几个方法
//1.force unwrapping(force unwrap the optional: optional!) 前提是I know the value is never gonna be nil
//let text:String = myOptional!
//this is the least safest way of working with optionals

//2.checking for nil values(a slightly safer way: check for nil)
//if myOptional != nil {
//    let text: String = myOptional!
//} else {
//    print("myOptional is found to be nil.")
//}
//this way is too wordy,still requiring ! mark; we have a simpler way

//3.optional binding
//if let safeOptional = myOptional {
//    let text: String = safeOptional
//} else {
//    print("myOptional is found to be nil.")
//    }
//this way works, but it skips the optional if it's equal to nil

//4.nil coalescing operator
//if the optional string is nil, how can we do that? ->nil coalescing operator
//格式：optional ?? defaultValue
//if it's not nil, we're going to use that value; but if it's nil, we are going to put the provided default value
//let text: String = myOptional ?? "I am the default value"
//print(text)

//5.optional chaining
//how can we do when we have an optional class/struct, instead of an optional value -> optional chaining
//格式： optional?.property; optional?.method()
//it means only when this optional is not nil do we actually execute that code; continue along this chain, go ahead and access that property/execute that method
struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

let myOptional: MyOptional?

myOptional = MyOptional()


print(myOptional?.property)





