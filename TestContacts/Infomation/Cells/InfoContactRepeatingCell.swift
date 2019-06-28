//
//  InfoContactRepeatingCell.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 22/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class InfoContactRepeatingCell: UITableViewCell {
    
    @IBOutlet weak var firstInfoLabel: UILabel!
    @IBOutlet weak var secondInfoLabel: UILabel!
    @IBOutlet weak var firstDescriptionLabel: UILabel!
    @IBOutlet weak var secondDescriptionLabel: UILabel!
    
    func repeatLoadingCell(indexPath: IndexPath){
        firstInfoLabel.text = infoLabel[indexPath.row - 1]
        secondInfoLabel.text = secondInfoLabels[indexPath.row - 1]
        
        switch indexPath.row {
            
        case Numbering.one.directionaryLenght:
            
            firstDescriptionLabel.text = Info.shared.phoneInfo
            secondDescriptionLabel.text = Info.shared.workPhoneInfo
            
        case Numbering.two.directionaryLenght:
            
            firstDescriptionLabel.text = Info.shared.emailInfo
            secondDescriptionLabel.text = Info.shared.workEmailInfo
            
        case Numbering.three.directionaryLenght:
            
            firstDescriptionLabel.text = Info.shared.nameWorkInfo
            secondDescriptionLabel.text = Info.shared.positionInfo
            
        case Numbering.four.directionaryLenght:
            
            firstDescriptionLabel.text = Info.shared.dateInfo
            secondDescriptionLabel.text = Info.shared.notesInfo
            
        default:
            break
        }
    }
}

