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
    

    @IBOutlet private weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Contact Infomation"
        tableView.register(UINib(nibName: "InfoContactCell", bundle: nil), forCellReuseIdentifier: NameCell.infoID.directionarySelection)
        tableView.register(UINib(nibName: "InfoContactRepeatingCell", bundle: nil), forCellReuseIdentifier: NameCell.repeatInfoID.directionarySelection)
        checkDataInVariables()
    }
    //Mark: - func check data in variables
    func checkDataInVariables(){
        for _ in 0...infoLabel.count + secondInfoLabels.count {
            
            if Info.shared.nameInfo == ""{
                Info.shared.nameInfo = "-"
            }
                
            else if Info.shared.secondNameInfo == ""{
                Info.shared.secondNameInfo = "-"
            }
                
            else if Info.shared.phoneInfo == ""{
                Info.shared.phoneInfo = "-"
            }
                
            else if Info.shared.workPhoneInfo == ""{
                Info.shared.workPhoneInfo = "-"
            }
                
            else if Info.shared.emailInfo == ""{
                Info.shared.emailInfo = "-"
            }
                
            else if Info.shared.workEmailInfo == ""{
                Info.shared.workEmailInfo = "-"
            }
                
            else if Info.shared.nameWorkInfo == ""{
                Info.shared.nameWorkInfo = "-"
            }
                
            else if Info.shared.positionInfo == ""{
                Info.shared.positionInfo = "-"
            }
                
            else if Info.shared.dateInfo == ""{
                Info.shared.dateInfo = "-"
            }
                
            else if Info.shared.notesInfo == ""{
                Info.shared.notesInfo = "-"
            }
        }
        
    }
    
}
