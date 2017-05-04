//
//  LinkedListNode.swift
//  tabAppQueueStack
//
//  Created by Admin on 04/05/2017.
//  Copyright © 2017 home. All rights reserved.
//

import Foundation

public class LinkedListNode<T>{
    var value: T
    var next: LinkedListNode?
    var prev: LinkedListNode?
    
    init(value: T) {
        self.value = value
    }
}
