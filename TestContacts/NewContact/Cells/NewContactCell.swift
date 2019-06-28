//
//  NewContactCell.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 21/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit


class  NewContactCell: UITableViewCell {
 
    @IBOutlet weak var imageNewContact: UIImageView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var secondNameTextField: UITextField!
    @IBOutlet weak var addImageButton: UIButton!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        customNewImageAndButton()
        customTextField()
        firstNameTextField.delegate = self
        secondNameTextField.delegate = self
        
    }
    
    
    private func customNewImageAndButton(){
        
        imageNewContact.layer.cornerRadius = 35
        imageNewContact.layer.borderColor = UIColor.black.cgColor
        imageNewContact.layer.borderWidth = 0.2
        imageNewContact.clipsToBounds = true
        
        addImageButton.layer.cornerRadius = 35
        addImageButton.layer.borderWidth = 0.2
        addImageButton.setTitle("Add photo", for: .normal)
        addImageButton.clipsToBounds = true
        
        
    }
    
    
    private func customTextField(){
        
        firstNameTextField.placeholder = "First name"
        secondNameTextField.placeholder = "Second name"
        
        firstNameTextField.textContentType = UITextContentType.name
        secondNameTextField.textContentType = UITextContentType.familyName
        
        firstNameTextField.clearButtonMode = .always
        firstNameTextField.clearButtonMode = .whileEditing
        secondNameTextField.clearButtonMode = .always
        secondNameTextField.clearButtonMode = .whileEditing
        
        
    }
    
    func loadNewContactCell(indexPath: IndexPath){
        
        firstNameTextField.text = ""
        secondNameTextField.text = ""
    
    }
    
    
    @IBAction private func addImageButtonClick(_ sender: UIButton) {
        addImageClick()
    }
    
    
}

