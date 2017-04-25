//: Playground - noun: a place where people can play

import UIKit
//import Foundation

 print("Hello world!")

// let a = 4.1
// let b = 5

// let c = 4.1 / a

// print(c)

// let er = (404, "Not Found")

// let (num, description) = er

// print("\(num) \(description)")

// func div(a: Int, b: Int) -> (Int, Int) {
// 	return (a/b, a%b)
// }

// print (div(a:5, b:6))

// var s2 = String()

// s2.append("\u{1F425}")

// print(s2)

// ranges

// closed range 1...5 [1;5]
// half-off 1..<5 [1;5)

//func midAryf(array : [Int]) -> Double{
//    var sum = 0
//    
//    for value in array {
//        sum += value
//    }
//    
//    let arrayCount = array.count
//    
//    let result = arrayCount == 0 ? 0.0 : Double(sum) / Double(arrayCount)
//    
//    return result
//}
//
//
//let a = [1, 2, 3, 5]
//
//print("mid aryf \(a) = \(midAryf(array: a))")
//
//func midGeometr(a: Int, b: Int) -> Double {
//    return sqrt(Double(a) * Double(b))
//}
//
//
//print("mid geometr \(midGeometr(a:5, b:6))")
//
//func getMin(a: Int, b: Int)->Int{
//    return [a, b].sorted()[0]
//}
//
//func getMax(a: Int, b: Int)->Int{
//    return [a, b].sorted()[1]
//}
//
//func greatestCommonDiv(a:Int, b:Int) -> Int {
//    var currMinValue = getMin(a:a, b:b)
//    
//    var currMaxValue = getMax(a:a, b:b)
//    
//    while currMinValue != 0 {
//        currMaxValue -= currMinValue
//        if (currMaxValue <= currMinValue){
//            let buffer = currMinValue
//            
//            currMinValue = currMaxValue
//            
//            currMaxValue = buffer
//        }
//    }
//    
//    return currMaxValue
//}
//
//let first = 1071
//let second = 462
//
//print("GSD\([first, second]) = \(greatestCommonDiv(a:first, b:second))")
//
//// Least common multiple
//func leastCommonMultiple(a: Int, b: Int) -> Int{
//    return a * b / greatestCommonDiv(a:a, b:b)
//}
//
//print("Least common multiple for \([first, second]) = \(leastCommonMultiple(a:first, b:second))")
//
//func quadrEq(a: Double, b: Double, c: Double) -> (Double?, Double?){
//    let d = b*b - 4*a*c
//    
//    let x1 = d >= 0 ? (-b + sqrt(d)) / 2 * a : nil
//    
//    let x2 = d >= 0 ? (-b - sqrt(d)) / 2 * a : nil
//    
//    return (x1, x2)
//}
//
//func printquadrEqResult(res: (Double?, Double?)) {
//    let (x1, x2) = res
//    
//    if x1 != nil && x2 != nil {
//        print("x1 = \(x1!) x2 = \(x2!)")
//    } else {
//        print("Not Found")
//    }
//}	
//
//printquadrEqResult(res: quadrEq(a:1, b:2, c:3))
//
//printquadrEqResult(res: quadrEq(a:1, b:3, c:-4))
//
//printquadrEqResult(res: quadrEq(a:1, b:3, c:-5))



