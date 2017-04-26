//: Playground - noun: a place where people can play

import UIKit

class QuadrEq {
    var a = 0.0
    
    var b = 0.0
    
    var c = 0.0
    
    var x1: Double?
    
    var x2: Double?
    
    var calculated = false
    
    func calculate() -> (Double?, Double?){
        let d = b * b - 4 * a * c
        
        x1 = d >= 0 ? (-b + sqrt(d)) / 2 * a : nil
        
        x2 = d >= 0 ? (-b - sqrt(d)) / 2 * a : nil
        
        calculated = true
        
        return (x1, x2)
    }
    
    func printQuadrEqResult() {
        if !calculated{
            calculate()
        }
        
        if x1 != nil && x2 != nil {
            print("x1 = \(x1!) x2 = \(x2!)")
        } else {
            print("Not Found")
        }
    }
}

let quadrEq1 = QuadrEq()
quadrEq1.a = 1
quadrEq1.b = 2
quadrEq1.c = 3

quadrEq1.calculated

quadrEq1.printQuadrEqResult()

quadrEq1.calculated

let quadrEq2 = QuadrEq()
quadrEq2.a = 1
quadrEq2.b = 3
quadrEq2.c = -4

quadrEq2.calculated

quadrEq2.printQuadrEqResult()

quadrEq2.calculated






