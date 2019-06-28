//
//  ContactsExtension.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 21/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit


extension ContactsViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let contact = contacts[indexPath.row]
        //Data Transfer in InfoContactVC
        let contacInfoVC = UIStoryboard(name: "InfoContactViewController", bundle: nil).instantiateViewController(withIdentifier: "InfoContactViewController") as! InfoContactViewController
        contacInfoVC.imageInfo = contact.imageData
        contacInfoVC.nameInfo = contact.firstnName
        contacInfoVC.secondNameInfo = contact.secondName
        contacInfoVC.phoneInfo = contact.phone
        contacInfoVC.workPhoneInfo = contact.workPhone
        contacInfoVC.emailInfo = contact.email
        contacInfoVC.workEmailInfo = contact.workEmail
        contacInfoVC.nameWorkInfo = contact.nameCompany
        contacInfoVC.positionInfo = contact.positionInCompany
        contacInfoVC.dateInfo = contact.birthDay
        contacInfoVC.notesInfo = contact.notes
        self.navigationController?.pushViewController(contacInfoVC, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if contacts.count != 0 {
            return contacts.count
        }
        else{
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ContactsCell.reusID, for: indexPath) as! ContactsCell
        let contact = contacts[indexPath.row]
        //Data display in Contact VC
        let photoContact = UIImage(data: contact.imageData as Data)  
        cell.imageContact.image = photoContact
        cell.imageContact.contentMode = .scaleAspectFill
        cell.imageContact.clipsToBounds = true
        if contact.firstnName == "" && contact.secondName == "" {
            if contact.phone == ""{
                cell.fullNameContact.text = contact.workPhone
            }
            else{
                cell.fullNameContact.text = contact.phone
            }
        }
        else{
            cell.fullNameContact.text = "\(contact.firstnName) \(contact.secondName)"
        }
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        let editingRow = contacts[indexPath.row]
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete") { _,_ in
            try! self.realm.write {
                self.realm.delete(editingRow)
                tableView.reloadData()
            }
        }
        return [deleteAction]
    }
}
