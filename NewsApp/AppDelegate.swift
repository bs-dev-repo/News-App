//
//  AppDelegate.swift
//  NewsApp
//
//  Created by Baibhav singh on 02/07/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
      //  globalUISetUp()
        
        return true
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

extension AppDelegate {
    
    func globalUISetUp()  {
        //Change navigation bar background color
        UINavigationBar.appearance().barTintColor = UIColor.init(displayP3Red: 47/255, green: 54/255, blue: 64/255, alpha: 1.0)
        
        //text color for large text title on navigation bar
      //  UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        //text color for small text title on navigation bar
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
    
    //To chnage status bar color - 2 steps
        //1. Target-> General-> status bar style = Light (from down)
        //2. Info.plist = add key 'View controller-based status bar appears' to NO
    }
}
