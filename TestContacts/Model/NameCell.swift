//
//  NameCell.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 28/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//


///Энам выбора имени ячейки
enum NameCell: String {
    case infoID = "InfoContactCell"
    case repeatInfoID = "InfoContactRepeatingCell"
    case newReuseId = "NewContactCell"
    case repeatingID = "NewContactRepeatingCell"
    case reusID = "ContactsCell"
    var directionarySelection: String {
        return rawValue
    }
}

