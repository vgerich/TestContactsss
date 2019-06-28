//
//  InfoContactViewController.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 22/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit
import RealmSwift
class InfoContactViewController: UIViewController {
    
    var imageInfo = NSData()
    var nameInfo = ""
    var secondNameInfo = ""
    var emailInfo = ""
    var workEmailInfo = ""
    var dateInfo = ""
    var phoneInfo = ""
    var workPhoneInfo = ""
    var notesInfo = ""
    var nameWorkInfo = ""
    var positionInfo = ""
    
    @IBOutlet private weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contact Infomation"
        tableView.register(UINib(nibName: "InfoContactCell", bundle: nil), forCellReuseIdentifier: InfoContactCell.infoID)
        tableView.register(UINib(nibName: "InfoContactRepeatingCell", bundle: nil), forCellReuseIdentifier: InfoContactRepeatingCell.repeatInfoID)
        checkDataInVariables()
    }
    
}
