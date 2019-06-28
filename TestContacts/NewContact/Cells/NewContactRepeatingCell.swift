//
//  NewContactRepeatingCell.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 22/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit


class NewContactRepeatingCell: UITableViewCell {
    
    @IBOutlet weak var firstRepeatingLabel: UILabel!
    @IBOutlet weak var secondRepeatingLabel: UILabel!
    @IBOutlet weak var firstRepeatingTextField: UITextField!
    @IBOutlet weak var secondRepeatingTextField: UITextField!
    
    private var fistRepeat = ["home","home","work","birthday"]
    private var secondRepeat = ["work ","work","position","Notes"]
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customTextField()
        firstRepeatingTextField.delegate = self
        secondRepeatingTextField.delegate = self
    }
    
    
    private func customTextField() {
        
        firstRepeatingTextField.clearButtonMode = .always
        firstRepeatingTextField.clearButtonMode = .whileEditing
        secondRepeatingTextField.clearButtonMode = .always
        secondRepeatingTextField.clearButtonMode = .whileEditing
        
    }
    
    private   func phoneCustomTextField(){
        
        firstRepeatingTextField.keyboardType = UIKeyboardType.phonePad
        secondRepeatingTextField.keyboardType = UIKeyboardType.phonePad
        
    }
    private   func emailCustomTextFeild(){
        
        firstRepeatingTextField.keyboardType = UIKeyboardType.emailAddress
        secondRepeatingTextField.keyboardType = UIKeyboardType.emailAddress
        
    }
    func loadedRepeatNewContactCell(indexPath: IndexPath){
        
        firstRepeatingLabel.text = fistRepeat[indexPath.row - 1]
        secondRepeatingLabel.text = secondRepeat[indexPath.row - 1]
        
        firstRepeatingTextField.placeholder = fistRepeatPlaceholder[indexPath.row - 1]
        secondRepeatingTextField.placeholder = secondRepeatPlaceholder[indexPath.row - 1]
        
        if firstRepeatingTextField.placeholder == "Number phone" {
            
            phoneCustomTextField()
        }
            
        else if firstRepeatingTextField.placeholder == "Email"{
            
            emailCustomTextFeild()
            
        }
        else if firstRepeatingTextField.placeholder == "Choose date"{
            
            createDatePicker()
        
        }
        
    }
    
}
