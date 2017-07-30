//
//  AppDelegate.swift
//  NSLayoutConstraints demo
//
//  Created by Damian Markowski on 30.07.2017.
//  Copyright © 2017 Damian Markowski. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setInitialViewController()
        return true
    }
    
    fileprivate func setInitialViewController(){
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let viewController = ViewController()
        self.window!.rootViewController = viewController
        self.window!.backgroundColor = UIColor.white
        self.window!.makeKeyAndVisible()
    }
}

