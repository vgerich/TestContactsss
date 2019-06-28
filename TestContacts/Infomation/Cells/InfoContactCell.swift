//
//  InfoContactCell.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 22/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class InfoContactCell: UITableViewCell {
    static let infoID = "InfoContactCell"
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
}
