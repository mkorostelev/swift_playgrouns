//
//  Stack.swift
//  tabAppQueueStack
//
//  Created by Admin on 04/05/2017.
//  Copyright © 2017 home. All rights reserved.
//

import Foundation

public class Stack<T>{
    public var list: LinkedList<T>?
    
    public func addItem(_ value: T){
        self.list?.append(value: value)
    }
    
    public func getItem()->T?{
        return self.list?.deleteByIndex((self.list?.count)! - 1)
    }
    public init() {
        self.list = LinkedList()
    }
    
    public func descriptionString()-> String?{
        return self.list?.descriptionString
    }
}
