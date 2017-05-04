//
//  Stack.swift
//  tabAppQueueStack
//
//  Created by Admin on 04/05/2017.
//  Copyright © 2017 home. All rights reserved.
//

import Foundation

class Stack<T>{
    var list: LinkedList<T>?
    
    func addItem(_ value: T){
        self.list?.append(value: value)
    }
    
    func getItem()->T?{
        return self.list?.deleteByIndex((self.list?.count)! - 1)
    }
    init() {
        self.list = LinkedList()
    }
}
