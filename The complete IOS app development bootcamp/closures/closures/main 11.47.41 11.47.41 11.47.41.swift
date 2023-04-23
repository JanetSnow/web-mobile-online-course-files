

import Foundation

//func calculator (n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
//    return operation(n1, n2)
//}
//
//func add (no1: Int, no2: Int) -> Int {
//    return no1 + no2
//}
////boil down this add function to its data type, all it is is (Int, Int) -> Int, we can use it as the third data type in calculator function, and call it operation
//
//
////简化的过程
////let result = calculator(n1: 2, n2: 3, operation:{(no1, no2) in no1 * no2})
//let result = calculator(n1: 2, n2: 3, operation:{$0 * $1})
////$0: the first parameter; $1: the second parameter; ……
////calculator(n1: 2, n2: 3) {$0 * $1}    他被叫做trailing closure,可以得到和前面相同的结果
//print(result)

let array = [1,3,5,7]


let result = array.map{$0 + 1}
//map中得要是一个function
//print(result)

let newArray = array.map{"\($0)"}
print(newArray)

