//
//  RaceDetailsViewController.swift
//  Races
//
//  Created by Rafael Kayumov on 11.07.2018.
//  Copyright © 2018 Rafael Kayumov. All rights reserved.
//

import UIKit

class RaceDetailsViewController: UIViewController {

    @IBOutlet weak var totalTimeTitleLabel: UILabel!
    @IBOutlet weak var totalTimeValueLabel: UILabel!
    @IBOutlet weak var totalDistanceTitleLabel: UILabel!
    @IBOutlet weak var totalDistanceValueLabel: UILabel!
    @IBOutlet weak var totalCaloriesTitleLabel: UILabel!
    @IBOutlet weak var totalCaloriesValueLabel: UILabel!
    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!

    weak var race: Race?

    override func viewDidLoad() {
        super.viewDidLoad()

        totalTimeTitleLabel.text = L10n.Racedetails.Stats.totalTime.uppercased()
        totalDistanceTitleLabel.text = L10n.Racedetails.Stats.totalDistanceKM.uppercased()
        totalCaloriesTitleLabel.text = L10n.Racedetails.Stats.totalCal.uppercased()

        configureWithRace()
    }

    func configureWithRace() {
        guard let race = race else { return }
        title = race.title

        guard let creator = race.creator else { return }
        totalTimeValueLabel.text = creator.totalTimeString
        totalDistanceValueLabel.text = String(creator.distance)
        totalCaloriesValueLabel.text = String(creator.calories)
        nameLabel.text = creator.fullName
        placeLabel.text = creator.locationTitle
        avatarImageView.image = UIImage(named: creator.avatarImageName)
    }
}
