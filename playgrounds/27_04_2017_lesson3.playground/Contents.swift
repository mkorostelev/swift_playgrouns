//: Playground - noun: a place where people can play

import UIKit

//Classes     vs      Structs
//Ref                 Value
//inheritance         no inheritance
//no default init         default init

// Linked list
// добавить в конец
// достать по индексу
// вывести все элементы
// вывести количество элементов
// удалить по индексу

class LinkedListNode<T>{
    var value: T
    var next: LinkedListNode?
    var prev: LinkedListNode?
    
    init(value: T) {
        self.value = value
    }
}



class LinkedList<T>{
    var first: LinkedListNode<T>?
    
    var last: LinkedListNode<T>?
    
    var count = 0
    
    func append(value: T){
        let newNode = LinkedListNode(value: value)
        
        if let currentLastNode = self.last{
            currentLastNode.next = newNode
            
            newNode.prev = currentLastNode
            
            self.last = newNode
        } else {
            self.first = newNode
            
            self.last = newNode
        }
        
        self.count += 1
    }
    
    func getByIndex(_ index: Int) -> T?{
        let currLastNode = self.getNodeByIndex(index)
        
        var returnValue: T?
        
        if let lastNode = currLastNode {
            returnValue = lastNode.value
        }
        
        return returnValue
    }
    
    func getNodeByIndex(_ index: Int) -> LinkedListNode<T>? {
        var localIndex = index
        
        var returnNode: LinkedListNode<T>?
        
        if var currLastNode = self.first {
            while localIndex > 0 && currLastNode.next != nil {
                currLastNode = currLastNode.next!
                
                localIndex -= 1
            }
            if localIndex == 0 {
                returnNode = currLastNode
            }
        }
        
        return returnNode
    }
    
    func insertByIndex(_ index: Int, value: T){
        if index < 0 {
            return
        }
        
        // if index >= count - append
        if index >= (self.count - 1) {
            self.append(value: value)
            
            return
        }
        
//        let localIndex = index > self.count ? self.count : index
        
        if let currIndexNode = self.getNodeByIndex(index) {
            let newNode = LinkedListNode(value: value)
            
            if let prevIndexNode = self.getNodeByIndex(index - 1) {
                // insert in middle of list
                prevIndexNode.next = newNode
                
                newNode.next = currIndexNode
            } else {
                // insert in first position
                newNode.next = self.first
                
                self.first = newNode
            }
        }
    }
    
    func deleteByIndex(_ index: Int) -> T?{
        let currIndexNode = self.getNodeByIndex(index)
        
        var returnValue: T?
        
        if let indexNode = currIndexNode {
            returnValue = indexNode.value
            
            if let prevNode = indexNode.prev {
                if let nextNode = indexNode.next{
                    prevNode.next = nextNode
                    nextNode.prev = prevNode
                } else {
                    prevNode.next = nil
                    
                    self.last = prevNode
                }
            } else if let nextNode = indexNode.next {
                // it is first item
                self.first = nextNode
            } else{
                // it was last item
                self.first = nil
                
                self.last = nil
            }
            
            self.count -= 1
        }
        
        return returnValue
    }
    
    func getItems()->[T]{
        var returnArray = [T]()
        
        if var currLastNode = self.first {
            returnArray.append(currLastNode.value)
            while currLastNode.next != nil {
                currLastNode = currLastNode.next!
                
                returnArray.append(currLastNode.value)
            }
        }
        
        return returnArray
    }
}


var list1 = LinkedList<Int>()

list1.count

list1.append(value: 5)

list1.first?.value

list1.append(value: 7)

list1.first?.value

list1.last?.value

list1.append(value: 6)

list1.insertByIndex(3, value: 9)

list1.count

list1.first?.value

list1.getByIndex(0)

list1.getByIndex(1)

list1.getByIndex(2)

list1.getItems()


//1
list1.deleteByIndex(1)

list1.getByIndex(0)

list1.getByIndex(1)

list1.getByIndex(2)


list1.getItems()

//2

list1.deleteByIndex(1)

list1.getByIndex(0)

list1.getByIndex(1)

list1.getByIndex(2)

list1.getItems()

list1.count

//3
list1.deleteByIndex(0)

list1.first?.value

list1.getByIndex(0)

list1.getByIndex(1)

list1.getByIndex(2)

list1.getItems()


//class Queue{
//    var list: LinkedList
//}





















