//
//  NewContactExtension.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 21/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

private var fistRepeat = ["home","home","work","birthday"]
private var secondRepeat = ["work ","work","position","Notes"]

var fistRepeatPlaceholder = ["Number phone","Email","Name company","Choose date"]
var secondRepeatPlaceholder = ["Number phone","Email","Position in company","Notes"]

extension NewContactViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fistRepeat.count + 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: NewContactCell.newReuseId) as! NewContactCell
            cell.firstNameTextField.text = ""
            cell.secondNameTextField.text = ""
            return cell
        }
        //Mark - custom cell
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: NewContactRepeatingCell.repeatingID) as! NewContactRepeatingCell
            
            cell.firstRepeatingLabel.text = fistRepeat[indexPath.row - 1]
            cell.secondRepeatingLabel.text = secondRepeat[indexPath.row - 1]
            
            cell.firstRepeatingTextField.placeholder = fistRepeatPlaceholder[indexPath.row - 1]
            cell.secondRepeatingTextField.placeholder = secondRepeatPlaceholder[indexPath.row - 1]
            
            if cell.firstRepeatingTextField.placeholder == "Number phone" {
                cell.phoneCustomTextField()
            }
            else if cell.firstRepeatingTextField.placeholder == "Email"{
                cell.emailCustomTextFeild()
            }
            else if cell.firstRepeatingTextField.placeholder == "Choose date"{
                cell.createDatePicker()
            }
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 130
        }
        else{
            return 110
        }
    }
    
    
    
}


