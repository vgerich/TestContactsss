//
//  AppDelegate.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 21/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if let barFont = UIFont(name: "AppleSDGothicNeo-Bold", size: 24) {
            UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),NSAttributedString.Key.font: barFont]
        }
        
        return true
    }

}

