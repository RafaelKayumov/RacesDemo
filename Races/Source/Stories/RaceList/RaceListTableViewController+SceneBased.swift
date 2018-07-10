//
//  RaceListTableViewController+SceneBased.swift
//  Races
//
//  Created by Rafael Kayumov on 10.07.2018.
//  Copyright © 2018 Rafael Kayumov. All rights reserved.
//

import Reusable

extension RaceListTableViewController: StoryboardSceneBased {

    static var sceneStoryboard: UIStoryboard {
        return UIStoryboard(name: "RaceList", bundle: nil)
    }
}
