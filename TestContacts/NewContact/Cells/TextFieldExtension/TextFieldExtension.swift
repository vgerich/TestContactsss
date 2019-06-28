//
//  TextFieldExtension.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 26/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

var id = 0
var photo = UIImage()
var name = ""
var secondName = ""
var email = ""
var workEmail = ""
var date = ""
var phone = ""
var workPhone = ""
var notes = ""
var nameWork = ""
var position = ""

extension NewContactCell: UITextFieldDelegate{
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
            name = firstNameTextField.text!
            secondName = secondNameTextField.text!
       return true
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
extension NewContactRepeatingCell: UITextFieldDelegate{
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if firstRepeatingTextField.placeholder == "Number phone"{
            phone = firstRepeatingTextField.text!
            workPhone = secondRepeatingTextField.text!
            return true
        }
        else if firstRepeatingTextField.placeholder == "Email"{
            email = firstRepeatingTextField.text!
            workEmail = secondRepeatingTextField.text!
            return true
        }
        else if firstRepeatingTextField.placeholder == "Name company"{
            nameWork = firstRepeatingTextField.text!
            position = secondRepeatingTextField.text!
            return true
        }
        else if firstRepeatingTextField.placeholder == "Choose date"{
            date = firstRepeatingTextField.text!
            notes = secondRepeatingTextField.text!
            return true
        }
        else {
            return false
        }
        
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
}
