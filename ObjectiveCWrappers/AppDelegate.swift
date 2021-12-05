//
//  AppDelegate.swift
//  ObjectiveCWrappers
//
//  Created by Can Yoldas on 5.12.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow()
        let mainVC = MainViewBuilder.build()
        mainVC.title = "Demo Project"
        let navigationVC = UINavigationController(rootViewController: mainVC)
        window?.rootViewController = navigationVC
        window?.makeKeyAndVisible()        
        return true
    }

}

