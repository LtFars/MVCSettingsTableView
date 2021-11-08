//
//  TabBarController.swift
//  MVCSettingsTableView
//
//  Created by Denis Snezhko on 29.10.2021.
//

import UIKit

final class TabBarController: UITabBarController {

    static func createTabBarController() -> UITabBarController {
        
        let tabBarController = UITabBarController()
        
        tabBarController.setViewControllers(
            [
                createChildViewController(controller: SettingsController() ,title: "Настройки")
            ], animated: true)
        
        return tabBarController
    }
    
    private static func createChildViewController(controller: UIViewController, title: String) -> UIViewController {
        
        let viewController = controller
        let navigationController = UINavigationController(rootViewController: viewController)
        viewController.tabBarItem = UITabBarItem(title: title, image: nil, tag: 0)
        navigationController.navigationBar.topItem?.titleView?.tintColor = .clear
        navigationController.navigationBar.topItem?.title = title
        
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.navigationBar.shadowImage = UIImage()
        navigationController.navigationBar.isTranslucent = true
        navigationController.view.backgroundColor = UIColor.systemBackground

        return navigationController
    }
}
