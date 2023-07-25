//
//  ViewController.swift
//  loginPageStackView
//
//  Created by Shivankit on 25/07/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var centreYConstraint: NSLayoutConstraint!
    @IBOutlet var continueButton: UIButton!
    
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var numberField: UITextField!
    
    var constraints = [NSLayoutConstraint]()
    
    @IBOutlet var textFieldLabel: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        numberField.delegate = self
      //  addConstraint()
        // Do any additional setup after loading the view.
    }
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("u r in text field ")
        
        constraints.append(NSLayoutConstraint(item: textFieldLabel, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 0.4, constant: 0))
        constraints.append(NSLayoutConstraint(item: continueButton, attribute: NSLayoutConstraint.Attribute.top, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.bottom, multiplier: 0.5, constant: 0))
        
        constraints.append(NSLayoutConstraint(item: greenView, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 0.3, constant: 0))

       // greenView.isHidden = true
        NSLayoutConstraint.activate(constraints)
        
        
    }
    
    

}



