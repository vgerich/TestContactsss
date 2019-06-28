//
//  Info.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 28/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit
struct Info {
    
    static var shared = Info()
    
    var imageInfo = NSData()
    var nameInfo = ""
    var secondNameInfo = ""
    var emailInfo = ""
    var workEmailInfo = ""
    var dateInfo = ""
    var phoneInfo = ""
    var workPhoneInfo = ""
    var notesInfo = ""
    var nameWorkInfo = ""
    var positionInfo = ""
    
    private init() {}
}


