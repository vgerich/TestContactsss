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
        tableView.register(UINib(nibName: "NewContactCell", bundle: nil), forCellReuseIdentifier: NewContactCell.newReuseId)
        tableView.register(UINib(nibName: "NewContactRepeatingCell", bundle: nil), forCellReuseIdentifier: NewContactRepeatingCell.repeatingID)
        //Mark: - this notification for Keyboard in NewContactViewController
        NotificationCenter.default.addObserver(self, selector: #selector(NewContactViewController.keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(NewContactViewController.keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        //Mark: - func clear value
        clearAllValue()
        tableView.allowsSelection = false
    }
    //Mark: - this notification for Keyboard in NewContactViewController
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

    
}

