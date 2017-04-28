//: Playground - noun: a place where people can play

import UIKit

//enum Media {
//    case book(title: String, author: String, year: Int)
//    case movie(title: String, director: String, year: Int)
//    case website(url: NSURL, title: String)
//    
//    var mediaTitle: String {
//        switch self {
//        case .book(title: let aTitle, author: _, year: _):
//            return aTitle
//        case .movie(title: let aTitle, director: _, year: _):
//            return aTitle
//        case .website(url: _, title: let aTitle):
//            return aTitle
//        }
//    }
//}
//
////extension Media {
////    var mediaTitle: String {
////        switch self {
////        case .book(title: let aTitle, author: _, year: _):
////            return aTitle
////        case .movie(title: let aTitle, director: _, year: _):
////            return aTitle
////        case .website(url: _, title: let aTitle):
////            return aTitle
////        }
////    }
////}
//
//let book = Media.book(title: "20,000 leagues under the sea", author: "Jules Verne", year: 1870)
//book.mediaTitle

class List {
    var value : String?
    var next : List?
    
    func append(value : String){
        var currentList : List = self
        
        while currentList.next != nil {
            currentList = currentList.next!
        }
        
        if self.value != nil {
            currentList.next = List()
            
            currentList.next?.value = value
        } else {
            self.value = value
        }
        
        func get(index : Int) -> String? {
            return self.getListItem(index: index)?.value
        }
        
        func getListItem(index : Int) -> List? {
            var currentList : List = self
            
            var currentIndex = 0
            
            var result : List?
            
            while (currentList.next != nil && currentIndex < index) {
                currentList = currentList.next!
                
                currentIndex -= 1
            }
            
            if (currentIndex == index) {
                result = currentList
            }
            
            return result
        }
    }
}














































