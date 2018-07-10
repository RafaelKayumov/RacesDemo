//
//  RaceListTableViewController.swift
//  Races
//
//  Created by Rafael Kayumov on 10.07.2018.
//  Copyright © 2018 Rafael Kayumov. All rights reserved.
//

import UIKit
import Reusable

class RaceListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = L10n.Racelist.racesTitle
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, cellType: RaceTableViewCell.self)
        return cell
    }
}
