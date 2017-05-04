//: Playground - noun: a place where people can play

import UIKit

// ARRAYS

Array(1...5)

var mutArray = ["a", "b", "c", "d", "e"]

var subArray = mutArray[1...2]

mutArray[1...3] = ["ZZZ"]

mutArray



var firstArray: [Int] = []

firstArray.append(1)

var secondArray = [Int]()

secondArray.append(2)

/* объявляем массив с пятью
   одинаковыми опциональными значениями */
var alphaArray = [String?] (repeating: nil, count: 5)

var newArray = Array(repeating: 0, count:5)

newArray == [0,0,0,0,0]

// слияние массивов
["a", "b", "c"] + ["a", "d"]

var arrayOfArrays = [[1,2,3], [4,5,6], [7,8,0]]

arrayOfArrays.count

arrayOfArrays.suffix(2)

arrayOfArrays[2].sorted().first

arrayOfArrays.remove(at: 1)

let newArray2 = arrayOfArrays

let newArrayWithoutSomeItems = newArray2.dropFirst()

[0, 5, 1, 2, 3, 1, 4].index(of: 1)

[1, 5, 8].min()

var a: Float = 3.5

var b: Float = 3.5

var c: Double = 3.5

a.hashValue

b.hashValue

c.hashValue

var someArray = [1, 3, 5, 7, 9]
someArray.reverse()

// SETS

/* набор, созданный путем
   явного указания типа */
var dishes: Set<String> = ["хлеб", "тушенка", "вода"]
var dishesTwo: Set = ["хлеб", "овощи", "тушенка", "вода"]
/* набор, созданный с помощью
  функции при явном
  указании типа данных*/
var members = Set<String>(arrayLiteral: "Энекин", "Оби Ван", "Йода")
/* набор, созданный с помощью
  функции без явного указания
  типа данных */
var membersTwo = Set(arrayLiteral:"Энекин", "Оби Ван", "Йода")

membersTwo.insert("Leya")

// создаем набор
var musicStyleSet: Set<String> = ["Jazz", "Hip-Hop",
                                  "Rock", "Funk"]
// проверка существования значения в наборе
if musicStyleSet.contains("Funk") {
    print("ты любишь хорошую музыку")
} else {
    print("послушай то, что я слушаю")
}

//
let evenDigits: Set = [0,2,4,6,8]

let oddDiits: Set = [1,3,5,7,9]

let differentDigits : Set = [3,4,7,8]

var inter = differentDigits.intersection(oddDiits).sorted()

var exclusive = differentDigits.symmetricDifference(oddDiits).sorted()

var union = evenDigits.union(oddDiits).sorted()

var union2 = evenDigits.union(differentDigits).sorted()

var substract = differentDigits.subtracting(evenDigits).sorted()

["a", "b", "c"].enumerated()






























