//
//  TextFieldExtension.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 26/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit


extension NewContactCell: UITextFieldDelegate{
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        
            Contact.shared.name = firstNameTextField.text!
            Contact.shared.secondName = secondNameTextField.text!
        
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
            Contact.shared.phone = firstRepeatingTextField.text!
            Contact.shared.workPhone = secondRepeatingTextField.text!
            
            return true
        }
            
        else if firstRepeatingTextField.placeholder == "Email"{
            
            Contact.shared.email = firstRepeatingTextField.text!
            Contact.shared.workEmail = secondRepeatingTextField.text!
            
            return true
            
        }
        else if firstRepeatingTextField.placeholder == "Name company"{
            
            Contact.shared.nameWork = firstRepeatingTextField.text!
            Contact.shared.position = secondRepeatingTextField.text!
            
            return true
            
        }
            
        else if firstRepeatingTextField.placeholder == "Choose date"{
            
            Contact.shared.date = firstRepeatingTextField.text!
            Contact.shared.notes = secondRepeatingTextField.text!
            
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
