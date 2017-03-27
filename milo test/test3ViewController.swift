//
//  test3ViewController.swift
//  milo test
//
//  Created by Vitaliy Tim on 3/27/17.
//  Copyright © 2017 Vitaliy Timoshenko. All rights reserved.
//

import UIKit

class test3ViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!

    override func viewDidAppear(_ animated: Bool) {
        
        var result = 0
        
        print("Hello dear user!");  greetingLabel.text = "Hello dear user!"
        
        DispatchQueue.global(qos: .background).async { [weak self] () -> () in
            for x in 1...99999 {
                result += x
                print(result) //Intentionally added this for better visibility, otherwise the calculation happens too fast
            }
            
            if self != nil {
                self?.displayAlert(title: "Title", message: "Your calculation finished while you were on this screen! \(result)")
            } else {
                var hostVC = UIApplication.shared.keyWindow?.rootViewController
                while let next = hostVC?.presentedViewController {
                    hostVC = next
                }
                hostVC?.displayAlert(title: "Title", message: "Your calculation finished while you were on some other screen of the app! \(result)")
            }
        }

        print("How are you today?"); greetingLabel.text = greetingLabel.text! + "\nHow are you today?"

    }

}
