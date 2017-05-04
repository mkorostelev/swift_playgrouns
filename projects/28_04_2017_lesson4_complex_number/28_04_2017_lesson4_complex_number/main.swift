//
//  main.swift
//  28_04_2017_lesson4_complex_number
//
//  Created by Maksym Korostelov on 4/28/17.
//  Copyright © 2017 Maksym Korostelov. All rights reserved.
//

import Foundation

print("Hello, World!")

func quadrEq(a: Double, b: Double, c: Double) -> (ComplexValue, ComplexValue){
    let d = b*b - 4*a*c
    
    var x1, x2 : ComplexValue
    
    if (d >= 0) {
        x1 = ComplexValue(a:(-b + sqrt(d)) / (2 * a), b: 0)
        
        x2 = ComplexValue(a:(-b - sqrt(d)) / (2 * a), b: 0)
    } else {
        x1 = ComplexValue(a:(-b) / (2 * a), b: sqrt(-d))
        
        x2 = ComplexValue(a:(-b) / (2 * a), b: -sqrt(-d))
    }
    
    
    
    return (x1, x2)
}

struct ComplexValue {
    var a : Double
    var b : Double
    
    mutating func sqr1() {
        self.a = a*a - b*b
        
        self.b = 2*b
    }
    
    func sqr2() -> ComplexValue {
        return ComplexValue(a: a*a - b*b, b: 2*b)
    }
}

//var result = quadrEq(a: 1, b: 2, c: 3)
//
//print("\(result.0.a) + i(\(result.0.b))")
//
//print("\(result.1.a) + i(\(result.1.b))")


var result = ComplexValue(a: 2, b: 4)

var result2 = result.sqr2()

print("\(result.a) + i(\(result.b))")

print("\(result2.a) + i(\(result2.b))")

result.sqr1()

print("\(result.a) + i(\(result.b))")




































