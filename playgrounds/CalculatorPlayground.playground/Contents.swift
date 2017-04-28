//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

"qqq/rwrqwrfe".contains(".")

typealias tupleAccumulator = (accumulator:Double?, description: String?)

private var accumulator: tupleAccumulator

accumulator.accumulator = 5

accumulator.accumulator

"5+2="

//func filter(_ includeElement: (T) -> Bool) -> [T]
let t = [5,2,1,7].filter {$0 > 3}
t

let sum: Int = [1,2,3,4].reduce(0) { $0 + $1 }
sum
let sum1 = [1,2,3].reduce(0,+)
sum1

let s = "abcdef"
var firstIndex: String.Index = s.startIndex
var c:Character = s[firstIndex]


let lastChar = s[s.index(firstIndex, offsetBy: 4)]

var point = CGPoint(x: 80, y: 50)

let path = UIBezierPath()

path.move(to: point)

path.addLine(to: CGPoint(x: 140, y: 150))

path.addLine(to: CGPoint(x: 10, y: 150))

path.close()

//UIColor.green.setFill()
//
//UIColor.red.setStroke()
//
path.lineWidth = 3.0
//
//path.fill()
//
//path.stroke()

let text = NSAttributedString(string: "Hello")

text.draw(at: point)

let textSize = text.size()

//let skullCenter = convert(center, from: superview)
