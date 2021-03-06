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

    let raceList = RaceList.mockedInstance()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        title = L10n.Racelist.racesTitle
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return raceList?.races.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(for: indexPath, cellType: RaceTableViewCell.self)
        let row = indexPath.row
        if let race = raceList?.raceAtIndex(row) {
            cell.configureWithRace(race)
        }
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "pushDetails",
            let detailsVC = segue.destination as? RaceDetailsViewController,
            let selectedCellIndex = tableView.indexPathForSelectedRow?.row,
            let race = raceList?.raceAtIndex(selectedCellIndex)
        else { return }

        detailsVC.race = race
    }
}
