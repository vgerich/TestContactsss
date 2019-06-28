//
//  InfoContactExtension.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 22/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

 var infoLabel = ["phone","email","name company","birthday"]
 var secondInfoLabels = ["work phone","work email","position","notes"]
extension InfoContactViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoLabel.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Mark: - passing value to cell
        if indexPath.row == Numbering.zero.directionaryLenght {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: NameCell.infoID.directionarySelection) as! InfoContactCell
            
            cell.loadCell(indexPath: indexPath)
            
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: NameCell.repeatInfoID.directionarySelection) as! InfoContactRepeatingCell
            
            cell.repeatLoadingCell(indexPath: indexPath)
            
            return cell
        }

    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 140
        }
        else{
            return 130
        }
    }

    
    
    
}
