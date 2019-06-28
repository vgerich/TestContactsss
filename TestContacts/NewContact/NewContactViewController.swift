//
//  NewContactViewController.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 21/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit
import RealmSwift
class NewContactViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let realm = try! Realm()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "New Contact"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveTapped(sender:)))
        
        tableView.register(UINib(nibName: "NewContactCell", bundle: nil), forCellReuseIdentifier: NameCell.newReuseId.directionarySelection)
        
        tableView.register(UINib(nibName: "NewContactRepeatingCell", bundle: nil), forCellReuseIdentifier: NameCell.repeatingID.directionarySelection)
        
        NotificationCenter.default.addObserver(self, selector: #selector(NewContactViewController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(NewContactViewController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        
        Contact.shared.photo = UIImage()
        Contact.shared.name = ""
        Contact.shared.secondName = ""
        Contact.shared.phone = ""
        Contact.shared.workPhone = ""
        Contact.shared.email = ""
        Contact.shared.workEmail = ""
        Contact.shared.nameWork = ""
        Contact.shared.position = ""
        Contact.shared.date = ""
        Contact.shared.notes = ""
        
        tableView.allowsSelection = false
    }
    

  
    @objc func keyboardWillShow(_ notification:Notification) {
        
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardSize.height, right: 0)
            
        }
    }
    
    @objc func keyboardWillHide(_ notification:Notification) {
        
        if ((notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue) != nil {
            tableView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        }
    }

    @objc private func saveTapped(sender: UIButton){
        
        view.endEditing(true)
        saveContactsInData()
        navigationController?.popViewController(animated: true)
        
    }
    
    //Mark: - Save new contact
    func saveContactsInData(){
        let contact = ContactData()
        if Contact.shared.name == "" && Contact.shared.secondName == "" && Contact.shared.phone == "" && Contact.shared.workPhone == ""{
            let allField = UIAlertController(title: "Ошибка", message: "Данные для сохранения отсутствуют", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            allField.addAction(warning)
            self.present(allField, animated: true, completion: nil)
        }
        else{
            let heigh = Contact.shared.photo.size.height
            let weight = Contact.shared.photo.size.width
            if heigh > 0 && weight > 0 {
                let photoData = NSData(data: Contact.shared.photo.pngData()!)
                contact.imageData = photoData
            }
            contact.firstnName = Contact.shared.name
            contact.secondName = Contact.shared.secondName
            contact.phone = Contact.shared.phone
            contact.workPhone = Contact.shared.workPhone
            contact.email = Contact.shared.email
            contact.workEmail = Contact.shared.workEmail
            contact.nameCompany = Contact.shared.nameWork
            contact.positionInCompany = Contact.shared.position
            contact.birthDay = Contact.shared.date
            contact.notes = Contact.shared.notes
            try! self.realm.write {
                self.realm.add(contact)
            }
        }
        
    }


    
}

