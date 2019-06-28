//
//  InfoContactCell.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 22/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class InfoContactCell: UITableViewCell {

    @IBOutlet weak var infoImage: UIImageView!
    @IBOutlet weak var firstNameInfoLabel: UILabel!
    @IBOutlet weak var secondNameInfoLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        customNewImage()
    }
  private func customNewImage(){
        infoImage.layer.cornerRadius = 35
        infoImage.layer.borderColor = UIColor.black.cgColor
        infoImage.layer.borderWidth = 0.2
        infoImage.clipsToBounds = true
    }
    
    
    func loadCell(indexPath: IndexPath){
        
        firstNameInfoLabel.text = Info.shared.nameInfo
        secondNameInfoLabel.text = Info.shared.secondNameInfo
        
        let photoContact = UIImage(data: Info.shared.imageInfo as Data)
        infoImage.image = photoContact
        infoImage.clipsToBounds = true
        infoImage.contentMode = .scaleAspectFill
    }
}
