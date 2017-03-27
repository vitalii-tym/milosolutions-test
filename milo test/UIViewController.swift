//
//  UIViewController.swift
//  milo test
//
//  Created by Vitaliy Tim on 3/27/17.
//  Copyright © 2017 Vitaliy Timoshenko. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func displayAlert(title: String, message: String) {

        let alert: UIAlertController = UIAlertController(title: title,
                                                         message: message,
                                                         preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "A common OK button"),
                                      style: UIAlertActionStyle.cancel,
                                      handler: nil))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
