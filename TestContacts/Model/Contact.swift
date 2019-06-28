//
//  Contact.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 28/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit


struct Contact {
    
    static var shared = Contact()
    
    
    var photo = UIImage()
    var name = ""
    var secondName = ""
    var email = ""
    var workEmail = ""
    var date = ""
    var phone = ""
    var workPhone = ""
    var notes = ""
    var nameWork = ""
    var position = ""
    
    private init() {}
}
