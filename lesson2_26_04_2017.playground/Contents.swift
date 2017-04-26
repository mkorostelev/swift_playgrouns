//: Playground - noun: a place where people can play

import UIKit

//enum Planets {
//    case Mercuriy(Int)
//    case Venus(Int)
//    
//    func sendman(a: Int){
//        print(a)
//    }
//}
//
//var e1 = Planets.Mercuriy(1)
//
//e1.sendman(a: 4)

/////////////////////////

//class QuadrEq {
//    var a = 0.0
//    
//    var b = 0.0
//    
//    var c = 0.0
//    
//    var x1: Double?
//    
//    var x2: Double?
//    
//    var calculated = false
//    
//    enum ResultVariant {
//        case two(Double?, Double?)
//        
//        case one(Double?)
//        
//        case no
//    }
//    
//    init(a: Double, b: Double, c: Double) {
//        self.a = a
//        
//        self.b = b
//        
//        self.c = c
//    }
//    
//    func calculate() -> ResultVariant{
//        let d = b * b - 4 * a * c
//
//        x1 = d >= 0 ? (-b + sqrt(d)) / (2 * a) : nil
//        
//        x2 = d >= 0 ? (-b - sqrt(d)) / (2 * a) : nil
//        
//        calculated = true
//        
//        let result: ResultVariant
//        
//        switch d {
//        case 0:
//            result = .one(x1)
//        case let x where x > 0:
//            result = .two(x1, x2)
//        default:
//            result = .no
//        }
//        
//        return result
//    }
//    
//    func printQuadrEqResult() {
//        if !calculated{
//            calculate()
//        }
//        
//        if x1 != nil && x2 != nil {
//            print("x1 = \(x1!) x2 = \(x2!)")
//        } else {
//            print("Not Found")
//        }
//    }
//}
//
//let quadrEq1 = QuadrEq(a: 1, b: 2, c: 3)
//
//quadrEq1.calculated
//
//quadrEq1.printQuadrEqResult()
//
//quadrEq1.calculated
//
//let quadrEq2 = QuadrEq(a: 1, b: 3, c: -4)
//
//quadrEq2.calculated
//
//quadrEq2.calculate()
//
//quadrEq2.printQuadrEqResult()
//
//quadrEq2.calculated
//
//let quadrEq3 = QuadrEq(a: 1, b: 2, c: 3)
//
//quadrEq3.calculate()
//
//let quadrEq4 = QuadrEq(a: 1, b: 2, c: 1)
//
//quadrEq4.calculate()
//
//let quadrEq5 = QuadrEq(a: 12, b: 85, c: 6)
//
//let res = quadrEq5.calculate()
//
//switch res {
//case QuadrEq.ResultVariant.two(let x1, let x2):
//    x1
//    x2
//default:
//    print("")
//}

////////////////

//func compare<T: Equatable>(a: T, b: T) -> Bool{
//    return a == b
//}
//
//compare(a: 1, b: 1.0)





//func findIndex<T: Equatable>(of valueToFind: T, in array:[T]) -> Int? {
//    for (index, value) in array.enumerated() {
//        if value == valueToFind {
//            return index
//        }
//    }
//    return nil
//}


//var op1:Int
//var op2:Double?
//var op3:Int!
//var op4:Int?
//
//op3 == op4
//
//let nOp2 = op2 ?? 0
//
//if let nOp2 = op2, let nOp4 = op4 {
//    print("")
//}
//
//while true{
//    guard let nOp2 = op2 else {
////        print("Error")
//        break
//    }
//
//}


//////////
//enum MyOptional <T>{
//    case value(x: T)
//    case none
//}
//
//var myValue1 = MyOptional<Int>.value(x: 25)
//
//var myValue2 = MyOptional<Double>.value(x: 25.0)
//
//var myValue3 = MyOptional<String>.value(x: "1")
//
//var myValue4 = MyOptional<Int>.none
//
//5 is Int

///////////
//var myValue1: Int?
//
//let testValue = myValue1 ?? 0
//
//myValue1 = 1
//
//var myValue2: String?
//
//if let noneMV1 = myValue1, let noneMV2 = myValue2{
//    print("\(noneMV1) \(noneMV2)")
//} else if let noneMV1 = myValue1{
//    print("\(noneMV1)")
//}
//
//var myValue3: Double?
//
//while true{
//    guard let noneMV3 = myValue3 else {
//        print("Error")
//        break
//    }
//
//}

enum Device {
    case iPhone
    case iPad
    var year: Int {
        switch self {
        case .iPhone: return 2007
        case .iPad: return 2010
        }
    }
}

var myValue1 = Device.iPad

myValue1.year












