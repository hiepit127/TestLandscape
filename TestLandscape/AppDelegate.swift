//
//  AppDelegate.swift
//  TestLandscape
//
//  Created by Hoàn Nguyễn on 7/23/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return LockOrientationManager.getOrientation()
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let window = UIWindow(frame: UIScreen.main.bounds)
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        window.rootViewController = storyboard.instantiateInitialViewController()
        window.makeKeyAndVisible()
        self.window = window
        return true
    }

}

