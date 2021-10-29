//
//  AppDelegate.swift
//  MVCSettingsTableView
//
//  Created by Denis Snezhko on 28.10.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window?.rootViewController = TabBarController.createTabBarController()
        window?.makeKeyAndVisible()
        
        return true
    }
}

