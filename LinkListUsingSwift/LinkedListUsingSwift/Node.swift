//
//  Node.swift
//  LinkedListUsingSwift
//
//  Created by Varun Kumar on 08/04/19.
//  Copyright © 2019 Varun Kumar. All rights reserved.
//

import Foundation

class Node<T>
{
    var data : T
    var next : Node?
    
    init(data:T, next: Node? = nil)
    {
        self.data = data
        self.next = next
    }
    
}
