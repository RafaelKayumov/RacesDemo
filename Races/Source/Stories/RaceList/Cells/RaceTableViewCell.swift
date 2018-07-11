//
//  RaceTableViewCell.swift
//  Races
//
//  Created by Rafael Kayumov on 10.07.2018.
//  Copyright © 2018 Rafael Kayumov. All rights reserved.
//

import UIKit
import Reusable

class RaceTableViewCell: UITableViewCell, Reusable {

    @IBOutlet private weak var backgroundImageView: UIImageView!
    @IBOutlet private weak var avatarImageView: UIImageView!
    @IBOutlet private weak var personsCountLabel: UILabel!
    @IBOutlet private weak var placeTitleLabel: UILabel!
    @IBOutlet private weak var distanceLabel: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureWithRace(_ race: Race) {
        backgroundImageView.image = UIImage(named: race.imageName)
        if let creatorAvatarImageName = race.creator?.avatarImageName {
            avatarImageView.image = UIImage(named: creatorAvatarImageName)
        }

        placeTitleLabel.text = race.title
        personsCountLabel.text = String(race.personsCount)
        distanceLabel.text = String(race.distance) + " KM"
        timeLabel.text = race.startDateString
    }
}
