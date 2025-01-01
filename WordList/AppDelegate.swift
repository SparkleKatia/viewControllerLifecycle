//
//  AppDelegate.swift
//  WordList
//
//  Created by Kateryna on 01/01/2025.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = WordListViewController()
        window?.makeKeyAndVisible()
        return true
    }
}

