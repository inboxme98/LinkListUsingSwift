//
//  LinkedList.swift
//  LinkedListUsingSwift
//
//  Created by Varun Kumar on 08/04/19.
//  Copyright © 2019 Varun Kumar. All rights reserved.
//

import Foundation

class LinkedList<T>: CustomStringConvertible where T:Comparable, T:CustomStringConvertible
{
   // Operations in LinkedList
    // 1: insert 2: insertatposition 3: append 4: removefirst 5 removelast 6: removefrom position 7: search
    // Lets take it on by one
    private var startNode : Node<T>?

    var isEmpty: Bool
    {
        return self.startNode == nil
    }
    var description: String {
       
        var data = ""
        let top = "### LINK LIST ###\n"
        let bottom = "\n#############\n"
        var node = self.startNode
        while(node != nil)
        {
            data += (node?.data.description)! + "\n"
            node = node?.next
        }
        return top + data + bottom
    }
    
    func append(element:T)
    {
        let item = Node(data: element)
        if var node = self.startNode
        {
            while(node.next != nil)
            {
                node = node.next!
            }
            node.next = item
        }
        else
        {
            self.startNode = item
        }
    }
    
    func insert(element:T)
    {
        let item = Node(data: element)
        item.next = self.startNode
        self.startNode = item
    }
   
    func insert(position:Int, element:T)
    {
        if position == 0
        {
            self.insert(element: element)
        }
        else
        {
            var item = Node(data: element)
            var nextnode = self.startNode
            var previousNode : Node<T>?
            
            for _ in 0..<position
            {
                previousNode = nextnode
                nextnode = nextnode?.next
            }
            previousNode?.next = item
            item.next = nextnode
            
        }
        
    }
    func removeFirst()
    {
        
       self.startNode = self.startNode?.next
    }
    func removeLast()
    {
      var nextNode = self.startNode
        var previousNode: Node<T>?
        
        while (nextNode?.next != nil)
        {
            previousNode = nextNode
            nextNode = nextNode?.next
        }
        previousNode?.next = nil
    }
    
    func remove(at position:Int)
    {
        var nextNode = self.startNode
        var previusNode : Node<T>?
        
        while (nextNode?.next != nil)
        {
           previusNode = nextNode
            nextNode = nextNode?.next
        }
        previusNode?.next = nil
    }
    
    func search(element:T) -> Int
    {
        var node = self.startNode
        var count = 0
        while (node?.next != nil)
        {
            if node?.data == element
            {
                return count
            }
            else
            {
                count += 1
                node = node?.next
            }
        }
        
        return count
    }
    
  
}
