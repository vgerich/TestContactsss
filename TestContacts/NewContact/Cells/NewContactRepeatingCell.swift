//
//  NewContactRepeatingCell.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 22/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class NewContactRepeatingCell: UITableViewCell {
    static let repeatingID = "NewContactRepeatingCell"
    @IBOutlet weak var firstRepeatingLabel: UILabel!
    @IBOutlet weak var secondRepeatingLabel: UILabel!
    @IBOutlet weak var firstRepeatingTextField: UITextField!
    @IBOutlet weak var secondRepeatingTextField: UITextField!
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
     func phoneCustomTextField(){
        firstRepeatingTextField.keyboardType = UIKeyboardType.phonePad
        secondRepeatingTextField.keyboardType = UIKeyboardType.phonePad
    }
     func emailCustomTextFeild(){
        firstRepeatingTextField.keyboardType = UIKeyboardType.emailAddress
        secondRepeatingTextField.keyboardType = UIKeyboardType.emailAddress
    }
   
}
