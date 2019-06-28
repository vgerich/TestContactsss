//
//  ContactsViewController.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 21/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit
import RealmSwift
class ContactsViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    
    var contacts: Results<ContactData>! {
        get{
            return realm.objects(ContactData.self).sorted(byKeyPath: "firstnName" , ascending: true)
        }
    }
    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "ContactsCell", bundle: nil), forCellReuseIdentifier: ContactsCell.reusID)
        navigation()
        print(Realm.Configuration.defaultConfiguration)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
    
    private func navigation(){
        navigationItem.title = "Contacts"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        
    }
    //Mark: - add new contact
    @objc func addTapped(){
        let newContactVC = UIStoryboard(name: "NewContactViewController", bundle: nil).instantiateViewController(withIdentifier: "NewContactViewController")
        self.navigationController?.pushViewController(newContactVC, animated: true)
    }


}

