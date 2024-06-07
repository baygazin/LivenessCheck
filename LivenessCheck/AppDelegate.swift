//
//  AppDelegate.swift
//  LivenessCheck
//
//  Created by Alisher Baygazin on 29.05.2024.
//

import UIKit
import Liveness

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        LivenessApplication.register { didRegister in
//            print(didRegister ? "LivenessApplication is registered" : "LivenessApplication is not registered")
//        }
//        LivenessApplication.challenges()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        let rootViewController = RootViewController()
        let navigationController = UINavigationController(rootViewController: rootViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }
}

