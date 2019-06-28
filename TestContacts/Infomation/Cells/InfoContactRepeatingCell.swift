//
//  InfoContactRepeatingCell.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 22/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

class InfoContactRepeatingCell: UITableViewCell {
    static let repeatInfoID = "InfoContactRepeatingCell"
    @IBOutlet weak var firstInfoLabel: UILabel!
    @IBOutlet weak var secondInfoLabel: UILabel!
    @IBOutlet weak var firstDescriptionLabel: UILabel!
    @IBOutlet weak var secondDescriptionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
