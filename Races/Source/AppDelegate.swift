//
//  AppDelegate.swift
//  Races
//
//  Created by Rafael Kayumov on 10.07.2018.
//  Copyright © 2018 Rafael Kayumov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var uiCoordinator: UICoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setupUI()

        return true
    }
}

extension AppDelegate {

    private func setupUI() {
        window = UIWindow(frame: UIScreen.main.bounds)

        let rootNavigationController = UINavigationController()
        let uiCoordinator = UICoordinator(navigationController: rootNavigationController)

        window?.rootViewController = rootNavigationController
        self.uiCoordinator = uiCoordinator

        uiCoordinator.start()
        window?.makeKeyAndVisible()
    }
}
