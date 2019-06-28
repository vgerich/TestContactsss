//
//  SaveNewContact.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 26/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

extension NewContactViewController{
    
    func saveContactsInData(){
        let contact = ContactData()
        if name == "" && secondName == "" && phone == "" && workPhone == ""{
            let allField = UIAlertController(title: "Ошибка", message: "Данные для сохранения отсутствуют", preferredStyle: .alert)
            let warning = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
            allField.addAction(warning)
            self.present(allField, animated: true, completion: nil)
        }
        else{
            let heigh = photo.size.height
            let weight = photo.size.width
            if heigh > 0 && weight > 0 {
                let photoData = NSData(data: photo.pngData()!)
                contact.imageData = photoData
            }
            contact.firstnName = name
            contact.secondName = secondName
            contact.phone = phone
            contact.workPhone = workPhone
            contact.email = email
            contact.workEmail = workEmail
            contact.nameCompany = nameWork
            contact.positionInCompany = position
            contact.birthDay = date
            contact.notes = notes
            try! self.realm.write {
                self.realm.add(contact)
            }
        }
        
    }
}
