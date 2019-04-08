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
        
        var linkelistObj = LinkedList<Int>()
        
        linkelistObj.append(element: 0)
        linkelistObj.append(element: 1)
        linkelistObj.append(element: 2)
        linkelistObj.insert(element: 3)
        
        
        print(linkelistObj.description)

        
        
        
    }


}

