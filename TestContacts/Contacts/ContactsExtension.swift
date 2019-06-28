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
        
        let contacInfoVC = UIStoryboard(name: "InfoContactViewController", bundle: nil).instantiateViewController(withIdentifier: "InfoContactViewController") as! InfoContactViewController
        Info.shared.imageInfo = contact.imageData
        Info.shared.nameInfo = contact.firstnName
        Info.shared.secondNameInfo = contact.secondName
        Info.shared.phoneInfo = contact.phone
        Info.shared.workPhoneInfo = contact.workPhone
        Info.shared.emailInfo = contact.email
        Info.shared.workEmailInfo = contact.workEmail
        Info.shared.nameWorkInfo = contact.nameCompany
        Info.shared.positionInfo = contact.positionInCompany
        Info.shared.dateInfo = contact.birthDay
        Info.shared.notesInfo = contact.notes
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: NameCell.reusID.directionarySelection, for: indexPath) as! ContactsCell
        
        cell.loadedCellContacts(indexPath: indexPath)
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
