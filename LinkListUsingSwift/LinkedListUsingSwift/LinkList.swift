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
        
    }
    
    func insert(element:T)
    {
        
    }
   
    func insert(position:Int, element:T)
    {
        
    }
    func removeFirst()
    {
        
    }
    func removeLast()
    {
        
    }
    
    func remove(at position:Int)
    {
        
    }
    
    func search(element:T) -> Int
    {
        
        return 0
    }
    
  
}
