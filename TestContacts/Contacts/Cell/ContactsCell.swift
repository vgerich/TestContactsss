//
//  ContactsCell.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 21/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class ContactsCell: UITableViewCell {
    static let reusID = "ContactsCell"
    @IBOutlet weak var fullNameContact: UILabel!
    @IBOutlet weak var imageContact: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        customImage()
    }
    //custom display image
    private func customImage(){
        imageContact.layer.cornerRadius = 25
        imageContact.layer.borderColor = UIColor.black.cgColor
        imageContact.layer.borderWidth = 0.2
        imageContact.clipsToBounds = true
    }
    
    
}
