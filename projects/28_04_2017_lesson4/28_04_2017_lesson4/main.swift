//
//  main.swift
//  28_04_2017_lesson4
//
//  Created by Maksym Korostelov on 4/28/17.
//  Copyright © 2017 Maksym Korostelov. All rights reserved.
//

import Foundation

class List {
    var value : String?
    
    var next : List?
    
    var count: Int {
        var currentList : List = self
        
        var index = self.value != nil ? 1 : 0
        
        while currentList.next != nil {
            currentList = currentList.next!
            
            index += 1
        }
        
        return index
    }
    
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
    }
    func get(index : Int) -> String? {
        return self.getListItem(index: index)?.value
    }
    
    func getListItem(index : Int) -> List? {
        var currentList = self
        
        var currentIndex = 0
        
        var result : List?
        
        while (currentList.next != nil && currentIndex < index) {
            currentList = currentList.next!
            
            currentIndex += 1
        }
        
        if (currentIndex == index) {
            result = currentList
        }
        
        return result
    }
    
    func delete(index : Int) -> String? {
        guard (index <= self.count) else {
            return nil
        }
        
        let prev = self.getListItem(index: index - 1)
        let next = self.getListItem(index: index + 1)
        
        let result = self.getListItem(index: index)?.value
        
        if (prev == nil) {
            // first
            self.value = next?.value
            self.next = self.next?.next
        } else {
            prev?.next = next
        }
        
        return result
    }
    
    func printAll(){
        var currentList : List? = self
        repeat{
            
            print(currentList?.value ?? "")
            
            currentList = currentList?.next
        } while (currentList?.next != nil)
        
        print(currentList?.value ?? "")
        print()
    }
}

//var list = List()
//
//list.append(value: "1")
//
////list.printAll()
//
//list.append(value: "2")
//
////list.printAll()
//
//list.append(value: "3")
//
////list.printAll()
//
//list.append(value: "4")
//
////list.printAll()
//
////print(list.get(index: 2) ?? "err")
//
////print(list.count)
//
//print(list.delete(index: 1) ?? "err")
//
//list.printAll()
//
//print(list.delete(index: 1) ?? "err")
//
//list.printAll()
//
//print(list.delete(index: 1) ?? "err")
//
//list.printAll()
//
//print(list.delete(index: 0) ?? "err")
//
//list.printAll()

class Queue {
    var list = List()
    
    func queue(value : String) {
        self.list.append(value: value)
    }
    
    func dequeue() -> String? {
        return self.list.delete(index: 0)
    }
}

class Stack {
    var list = List()
    
    func push(value : String) {
        self.list.append(value: value)
    }
    
    func pop() -> String? {
        return self.list.delete(index: self.list.count - 1)
    }
}

//let myQueue = Queue()
//
//myQueue.queue(value: "1")
//
//myQueue.queue(value: "2")
//
//myQueue.queue(value: "3")
//
//print(myQueue.dequeue() ?? "err")
//
//myQueue.list.printAll()
//
//print(myQueue.dequeue() ?? "err")
//
//myQueue.list.printAll()
//
//print(myQueue.dequeue() ?? "err")
//
//myQueue.list.printAll()
//
//print(myQueue.dequeue() ?? "err")
//
//myQueue.list.printAll()

let myStack = Stack()

myStack.push(value: "1")

myStack.push(value: "2")

myStack.push(value: "3")

//print(myStack.list.count)

myStack.list.printAll()

print(myStack.pop() ?? "err")

print(myStack.pop() ?? "err")

print(myStack.pop() ?? "err")






















