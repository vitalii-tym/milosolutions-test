//
//  test2ViewController.swift
//  milo test
//
//  Created by Vitaliy Tim on 3/27/17.
//  Copyright © 2017 Vitaliy Timoshenko. All rights reserved.
//

import UIKit

class test2ViewController: UIViewController {
    
    @IBOutlet weak var alertTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBAction func displayAlertTapped(_ sender: UIButton) {
        
        displayAlert(title: alertTextField.text!, message: messageTextField.text!)
        
    }
    
}
