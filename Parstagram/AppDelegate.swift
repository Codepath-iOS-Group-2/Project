//
//  AppDelegate.swift
//  Parstagram
//
//  Created by Camila Aichele on 10/9/22.
//

import UIKit
import Parse

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        let parseConfig = ParseClientConfiguration {
                $0.applicationId = "ccDzA5xYrjFxhq3fpPN1XCC2Uqxu3Y53gjYMslbG"
                $0.clientKey = "2PMu3ll8PZcdcyAOSoOxtEh83UK4sN7Muavs0PnI"
                $0.server = "https://parseapi.back4app.com"
        }
        Parse.initialize(with: parseConfig)

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

