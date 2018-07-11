//
//  UICoordinator.swift
//  Races
//
//  Created by Rafael Kayumov on 10.07.2018.
//  Copyright © 2018 Rafael Kayumov. All rights reserved.
//

import UIKit
import Reusable

class UICoordinator {

    private(set) var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController

        configureNavigationBarAppearance()
    }

    func start () {
        startRaceList()
    }

    private func startRaceList() {
        let raceListViewController = StoryboardScene.RaceList.raceListTableViewController.instantiate()
        navigationController.viewControllers = [raceListViewController]
    }

    private func configureNavigationBarAppearance() {
        let backImage = UIImage(asset: Asset.back)
        UINavigationBar.appearance().backIndicatorImage = backImage
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = backImage

        let tintColor = UIColor(white: 55/256, alpha: 1.0)
        UINavigationBar.appearance().tintColor = tintColor
        UINavigationBar.appearance().titleTextAttributes = [
            NSAttributedStringKey.foregroundColor: tintColor,
            NSAttributedStringKey.font: UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.regular)
        ]
    }
}
