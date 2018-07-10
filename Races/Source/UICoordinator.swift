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
    }

    func start () {
        startRaceList()
    }

    private func startRaceList() {
        let raceListViewController = StoryboardScene.RaceList.raceListTableViewController.instantiate()
        navigationController.viewControllers = [raceListViewController]
    }
}
