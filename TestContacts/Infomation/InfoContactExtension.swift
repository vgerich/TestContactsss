//
//  InfoContactExtension.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 22/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

 var infoLabel = ["phone","email","name company","birthday"]
 var secondInfoLabel = ["work phone","work email","position","notes"]
extension InfoContactViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return infoLabel.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Mark: - passing value to cell
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: InfoContactCell.infoID) as! InfoContactCell
            cell.firstNameInfoLabel.text = nameInfo
            cell.secondNameInfoLabel.text = secondNameInfo
            
            let photoContact = UIImage(data: imageInfo as Data)
            cell.infoImage.image = photoContact
            cell.infoImage.clipsToBounds = true
            cell.infoImage.contentMode = .scaleAspectFill
            
            return cell
        }
        else{
            let cell = tableView.dequeueReusableCell(withIdentifier: InfoContactRepeatingCell.repeatInfoID) as! InfoContactRepeatingCell
            cell.firstInfoLabel.text = infoLabel[indexPath.row - 1]
            cell.secondInfoLabel.text = secondInfoLabel[indexPath.row - 1]
            
            switch indexPath.row {
            case 1:
                cell.firstDescriptionLabel.text = phoneInfo
                cell.secondDescriptionLabel.text = workPhoneInfo
            case 2:
                cell.firstDescriptionLabel.text = emailInfo
                cell.secondDescriptionLabel.text = workEmailInfo
            case 3:
                cell.firstDescriptionLabel.text = nameWorkInfo
                cell.secondDescriptionLabel.text = positionInfo
            case 4:
                cell.firstDescriptionLabel.text = dateInfo
                cell.secondDescriptionLabel.text = notesInfo
            default:
                break
            }
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
