//
//  AppDelegate.swift
//  SPLASHSCREEN2
//
//  Created by Mayurii Gajbhiye on 05/04/20.
//  Copyright © 2020 Mayurii Gajbhiye. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.splashScreen()
        
        // Override point for customization after application launch.
        return true
    }

    private func splashScreen(){
        
        let launchScreenVC = UIStoryboard.init(name: "LaunchScreen", bundle: nil)
        let rootVC = launchScreenVC.instantiateViewController(identifier: "splashControler")

        self.window?.rootViewController = rootVC
        self.window?.makeKeyAndVisible()
        Timer.scheduledTimer(timeInterval: 6, target: self, selector: #selector(dismissSplashScreenController), userInfo: nil, repeats: false)

    }
    
    @objc func dismissSplashScreenController(){
       
        let mainVC = UIStoryboard.init(name: "Main", bundle: nil)
        let rootVC = mainVC.instantiateViewController(identifier: "initialControler")
        self.window?.rootViewController = rootVC
        self.window?.makeKeyAndVisible()
        
        
    }
    
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

