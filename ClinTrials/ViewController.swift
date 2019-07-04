//
//  ViewController.swift
//  ClinTrials
//
//  Created by Richard de Borja on 2019-07-02.
//  Copyright © 2019 Richard de Borja. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var diseaseTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        ageTextField.delegate = self
        diseaseTextField.delegate = self
    }

    // textfield delegate methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // hide the keyboard
        textField.resignFirstResponder()
        
        return true
    }
}
