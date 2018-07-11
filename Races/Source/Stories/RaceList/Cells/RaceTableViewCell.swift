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

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func configureWithRace(_ race: Race) {
        backgroundImageView.image = UIImage(named: race.imageName)
    }
}
