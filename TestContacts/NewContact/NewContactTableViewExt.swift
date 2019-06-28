//
//  NewContactExtension.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 21/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit



var fistRepeatPlaceholder = ["Number phone","Email","Name company","Choose date"]
var secondRepeatPlaceholder = ["Number phone","Email","Position in company","Notes"]

extension NewContactViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return fistRepeatPlaceholder.count + 1
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: NameCell.newReuseId.directionarySelection) as! NewContactCell
            
            cell.loadNewContactCell(indexPath: indexPath)
            
            return cell
        }
            
            
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: NameCell.repeatingID.directionarySelection) as! NewContactRepeatingCell
            
            cell.loadedRepeatNewContactCell(indexPath: indexPath)
            
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


