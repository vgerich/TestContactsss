//
//  GlobalArrays.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 24/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit
import RealmSwift
class ContactData: Object {
    @objc dynamic var imageData = NSData()
    @objc dynamic var firstnName: String = ""
    @objc dynamic var secondName: String = ""
    @objc dynamic var phone: String = ""
    @objc dynamic var workPhone: String = ""
    @objc dynamic var email: String = ""
    @objc dynamic var workEmail: String = ""
    @objc dynamic var nameCompany: String = ""
    @objc dynamic var positionInCompany: String = ""
    @objc dynamic var birthDay: String = ""
    @objc dynamic var notes: String = ""
}

