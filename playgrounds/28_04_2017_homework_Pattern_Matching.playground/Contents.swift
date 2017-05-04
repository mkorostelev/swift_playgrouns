//: Playground - noun: a place where people can play

import UIKit

// Pattern Matching

enum Media {
    case book(title: String, author: String, year: Int)
    case movie(title: String, director: String, year: Int)
    case website(url: NSURL, title: String)
}

extension Media {
    var mediaTitle: String {
        switch self {
        case .book(title: let aTitle, author: _, year: _):
            return aTitle
        case .movie(title: let aTitle, director: _, year: _):
            return aTitle
        case .website(url: _, title: let aTitle):
            return aTitle
        }
    }
}

let book = Media.book(title: "20,000 leagues under the sea", author: "Jules Verne", year: 1870)
book.mediaTitle

// Using fixed values

extension Media {
    var isFromJulesVerne: Bool {
        switch self {
        case .book(title: _, author: "Jules Verne", year: _):
            return true
        case .movie(title: _, director: "Jules Verne", year: _):
            return true
        default:
            return false
        }
    }
}

book.isFromJulesVerne

extension Media {
    func checkAuthor(_ author: String) -> Bool {
        switch self {
        case .book(title: _, author: author, year: _):
            return true
        case .movie(title: _, director: author, year: _):
            return true
        default:
            return false
        }
    }
}

book.checkAuthor("Jules Verne")


enum Response {
    case httpResponse(statusCode: Int)
    case networkError(Error)
}

let response: Response = .httpResponse(statusCode: 200)
switch response {
    case .httpResponse(200): print("OK")
    case .httpResponse(404): print("Not found")
    default: print("Other")
}



// NEW in swift 3: few enum elements in one case
extension Media {
    var mediaTitle2: String {
        switch self {
        case let .book(title: aTitle, author: _, year: _), let .movie(title: aTitle, director: _, year: _):
            return aTitle
        case let .website(url: _, title: aTitle):
            return aTitle
        }
    }
}

book.mediaTitle2

//Using tuples without argument labels

extension Media {
    var mediaTitle3: String {
        switch self {
        case let .book(title, _, _): return title
        case let .movie(title, _, _): return title
        case let .website(_, title): return title
        }
    }
}

book.mediaTitle3

extension Media {
    var mediaTitle4: String {
        switch self {
        case let .book(tuple): return tuple.title
        case let .movie(tuple): return tuple.title
        case let .website(tuple): return tuple.title
        }
    }
}

// Using Where
extension Media {
    var publishedAfter1930: Bool {
        switch self {
        case let .book(_, _, year) where year > 1930: return true
        case let .movie(_, _, year) where year > 1930: return true
        case .website: return true // same as "case .website(_)" but we ignore the associated tuple value
        default: return false
        }
    }
}

book.publishedAfter1930

























/////////////////// my sample ////////////////////////

enum Vechicle {
    case car(producer: String, modelYear: Int, maxPanangersCount: Int, safetyLevel: Double?, maxSpeed: Int, fuelType: String)
    case bicycle(producer: String, modelYear: Int, maxPanangersCount: Int, maxSpeed: Int) // all bicycles are safe
    case truck(producer: String, modelYear: Int, safetyLevel: Double?, maxSpeed: Int, maxCargoWeight: Int)
}

let myBike: Vechicle = .bicycle(producer: "BMX", modelYear: 2003, maxPanangersCount: 1, maxSpeed: 48)

let myCar: Vechicle = .car(producer: "Volvo", modelYear: 2011, maxPanangersCount: 5, safetyLevel: nil, maxSpeed: 280, fuelType: "fuel A")

extension Vechicle {
    var vechicleProducer: String {
        switch self {
        case let .bicycle(producer: cProducer, modelYear: _, maxPanangersCount: _, maxSpeed: _):
            return cProducer
        case .car(producer: let cProducer, modelYear: _, maxPanangersCount: _, safetyLevel: _, maxSpeed: _, fuelType: _):
            return cProducer
        case .truck(producer: let cProducer, modelYear: _, safetyLevel: _, maxSpeed: _, maxCargoWeight: _):
            return cProducer
        }
    }
}

myBike.vechicleProducer

extension Vechicle {
    func checkSafety(safetyMinLevel: Double) -> Bool {
        switch self {
        case .bicycle:
            return true
        case let .car(producer: cProducer, modelYear: _, maxPanangersCount: _, safetyLevel: cSafetyLevel, maxSpeed: _, fuelType: _):
            return (cSafetyLevel ?? (cProducer == "Volvo" ? 100.0 : 0.0)) >= safetyMinLevel // if Volvo without safety level - it is safe :)
        case let .truck(producer: _, modelYear: _, safetyLevel: cSafetyLevel, maxSpeed: _, maxCargoWeight: _):
            return (cSafetyLevel ?? 0.0) >= safetyMinLevel
        }
    }
    
    func checkFuelType(fuelType: String) -> Bool {
        switch self {
        case .car(producer: _, modelYear: _, maxPanangersCount: _, safetyLevel: _, maxSpeed: _, fuelType: fuelType):
            return true
        default:
            return false
        }
    }
}

myBike.checkSafety(safetyMinLevel: 58.0)

myCar.checkSafety(safetyMinLevel: 75.0)

myBike.checkFuelType(fuelType: "fuel A")

myCar.checkFuelType(fuelType: "fuel A")

extension Vechicle {
    var vechicleProducer2: String {
        switch self {
        case let .bicycle(producer: cProducer, modelYear: _, maxPanangersCount: _, maxSpeed: _), .car(producer: let cProducer, modelYear: _, maxPanangersCount: _, safetyLevel: _, maxSpeed: _, fuelType: _), .truck(producer: let cProducer, modelYear: _, safetyLevel: _, maxSpeed: _, maxCargoWeight: _):
            return cProducer
        }
    }
}

myBike.vechicleProducer2

















