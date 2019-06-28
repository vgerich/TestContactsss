//
//  ContactsCell.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 21/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit
import RealmSwift
class ContactsCell: UITableViewCell {
   
    @IBOutlet weak var fullNameContact: UILabel!
    @IBOutlet weak var imageContact: UIImageView!
    let realm = try! Realm()
    var contacts: Results<ContactData>! {
        get{return realm.objects(ContactData.self).sorted(byKeyPath: "firstnName" , ascending: true)}
    }
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
    
    func loadedCellContacts(indexPath: IndexPath){
        let contact = contacts[indexPath.row]
        
        let photoContact = UIImage(data: contact.imageData as Data)
        imageContact.image = photoContact
        imageContact.contentMode = .scaleAspectFill
        imageContact.clipsToBounds = true
        
        if contact.firstnName == "" && contact.secondName == "" {
            
            if contact.phone == ""{
                
                fullNameContact.text = contact.workPhone
            }
            else{
                
                fullNameContact.text = contact.phone
            }
        }
            
        else{
            fullNameContact.text = "\(contact.firstnName) \(contact.secondName)"
        }
    }
    
}
