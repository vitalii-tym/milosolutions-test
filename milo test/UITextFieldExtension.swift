//
//  UITextFieldExtension.swift
//  milo test
//
//  Created by Vitaliy Tim on 3/27/17.
//  Copyright © 2017 Vitaliy Timoshenko. All rights reserved.
//

import UIKit

extension UITextField {
    
    func addCancelButton() {
        
        let cancelButton = UIButton(frame: CGRect(x: 0, y: 0, width: 26, height: 20))
        cancelButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: 3, bottom: 0, right: 3)
        cancelButton.setImage(UIImage(named: "textfield-cancel-button"), for: .normal)
        cancelButton.addTarget(self, action: #selector(clearContents), for: UIControlEvents.touchUpInside)

        self.rightView = cancelButton
        self.rightViewMode = UITextFieldViewMode.whileEditing

    }
    
    func clearContents() {
        self.text = ""
    }
    
}
