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
//    var secondWindow: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.backgroundColor = .white
        let rootViewController = RootViewController()
        let navigationController = UINavigationController(rootViewController: rootViewController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

//        window = UIWindow(
//            frame: .init(
//                x: 0,
//                y: 0,
//                width: UIScreen.main.bounds.width / 2,
//                height: UIScreen.main.bounds.height
//            )
//        )
//        let firstRootViewController = FirstViewController()
//        firstRootViewController.view.backgroundColor = .red
//        let firstNavigationController = UINavigationController(rootViewController: firstRootViewController)
//        window?.rootViewController = firstNavigationController
//        window?.makeKeyAndVisible()
//
//        secondWindow = UIWindow(
//            frame: .init(
//                x: UIScreen.main.bounds.midX,
//                y: 0,
//                width: UIScreen.main.bounds.width / 2,
//                height: UIScreen.main.bounds.height
//            )
//        )
//        let secondRootViewController = FirstViewController()
//        secondRootViewController.view.backgroundColor = .green
//        let secondNavigationController = UINavigationController(rootViewController: secondRootViewController)
//        secondWindow?.rootViewController = secondNavigationController
//        secondWindow?.isHidden = false
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

