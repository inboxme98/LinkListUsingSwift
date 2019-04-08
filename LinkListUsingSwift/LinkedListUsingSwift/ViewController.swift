//
//  ViewController.swift
//  LinkedListUsingSwift
//
//  Created by Varun Kumar on 08/04/19.
//  Copyright © 2019 Varun Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let linkedListObj = LinkedList<Int>()
        linkedListObj.append(element: 0)
        linkedListObj.append(element: 1)
        linkedListObj.append(element: 2)
        linkedListObj.append(element: 3)
        linkedListObj.append(element: 4)
        linkedListObj.append(element: 5)
        print(linkedListObj.description)
        linkedListObj.insert(element: 100)
        print(linkedListObj.description)
        linkedListObj.insert(position: 4, element: 1000)
        print(linkedListObj.description)
        print(linkedListObj.search(element: 2))
        print(linkedListObj.description)
        linkedListObj.removeFirst()
        print(linkedListObj.description)
        linkedListObj.removeLast()
        print(linkedListObj.description)
        linkedListObj.remove(at: 2)
        print(linkedListObj.description)

        
        
        
    }


}

