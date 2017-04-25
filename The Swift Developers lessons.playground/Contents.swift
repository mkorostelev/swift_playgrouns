//: Playground - noun: a place where people can play

import UIKit
// test 111

//
//var str = "Hello, playground"
//
//var dictionary = [String : String]()
//
//dictionary["first"] = "1"
//
//dictionary
//
//dictionary["first"] = "2"
//
//dictionary
//
//dictionary["second"] = "2"
//
//dictionary
//
////for (key, value) in dictionary {
////    print("key = \(key); value = \(value)")
////}
//
//// Tuples
//
//let tuple: (Int, String, Bool) = (1, "One", true)
//
//let (intValue, stringValue, boolValue) = tuple
//
//intValue
//
//stringValue
//
//tuple.2
//
//let tuple1: (intValue:Int, stringValue:String, boolValue:Bool) = (1, "One", true)
//
//tuple1.stringValue
//
//let currentWork = "developer"
//
//let age = 28
//
//let sex = "M"
//
//switch (currentWork, age) {
//case (_, 1...18):
//    print("Too yang!")
//case ("developer", 1...50) where sex != "M":
//    print("We are sorry, we don`t need woman")
//case ("developer", 1...50): //where sex == "M":
//    print("We need you!!!")
//case let (userWork, userAge):
//    print("\(userWork) in \(userAge)?")
//default:
//    break
//}
//
//
//func generateAnswer(answer: Bool) -> () -> String{
//    func sayYes() -> String{
//        return "Yes"
//    }
//    
//    func sayNo() -> String{
//        return "No"
//    }
//    
//    return answer ? sayYes : sayNo
//}
//
//generateAnswer(answer: true)
//
//generateAnswer(answer: true)()

// closures

let names = ["Joe", "john", "Adam", "jack", "Jeremy"]

names.sorted()

names

"Java".lowercased()

let a = names.sorted{$0.lowercased()<$1.lowercased()}

a

names

// захват значений

func makeHello(helloString: String) -> (String) -> (String) {
    return { (name: String)-> String in return "\(helloString) \(name) " }
}

var helloMethod = makeHello(helloString: "Hello, dear")

helloMethod("Mikki")




