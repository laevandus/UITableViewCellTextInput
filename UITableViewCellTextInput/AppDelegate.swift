//
//  AppDelegate.swift
//  UITableViewCellTextInput
//
//  Created by Toomas Vahter on 03/11/2018.
//  Copyright © 2018 Augmented Code. All rights reserved.
//

import UIKit

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    let navigationController = UINavigationController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.frame = UIScreen.main.bounds
        window?.rootViewController = navigationController
        let note = Note(topic: "", text: "Some text")
        navigationController.viewControllers = [FormViewController(note: note)]
        window?.makeKeyAndVisible()
        return true
    }
}
