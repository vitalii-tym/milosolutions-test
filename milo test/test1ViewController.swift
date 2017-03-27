//
//  test1ViewController.swift
//  milo test
//
//  Created by Vitaliy Tim on 3/27/17.
//  Copyright © 2017 Vitaliy Timoshenko. All rights reserved.
//

import UIKit

class test1ViewController: UIViewController {
    
    @IBOutlet weak var test1TextField: UITextField!
    @IBOutlet weak var test1TextField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        test1TextField.addCancelButton()
        
        test1TextField2.addCancelButton()
        
    }
    
}
