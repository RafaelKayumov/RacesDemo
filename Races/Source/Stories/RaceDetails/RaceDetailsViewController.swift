//
//  RaceDetailsViewController.swift
//  Races
//
//  Created by Rafael Kayumov on 11.07.2018.
//  Copyright © 2018 Rafael Kayumov. All rights reserved.
//

import UIKit
import MapKit
import M13Checkbox

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
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var checkboxContainer: UIView!

    weak var race: Race?

    override func viewDidLoad() {
        super.viewDidLoad()

        totalTimeTitleLabel.text = L10n.Racedetails.Stats.totalTime.uppercased()
        totalDistanceTitleLabel.text = L10n.Racedetails.Stats.totalDistanceKM.uppercased()
        totalCaloriesTitleLabel.text = L10n.Racedetails.Stats.totalCal.uppercased()

        configureWithRace()
        addAndFocusAnnotation()
        setupCheckbox()
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

    private func setupCheckbox() {
        let checkbox = M13Checkbox(frame: checkboxContainer.bounds)
        checkbox.checkState = .checked
        checkbox.markType = .checkmark
        checkbox.boxType = .square
        checkbox.cornerRadius = 3.5
        checkbox.boxLineWidth = 1
        checkbox.checkmarkLineWidth = 2
        checkbox.animationDuration = 0.2
        checkbox.tintColor = UIColor(hex: "00C46B")
        checkbox.secondaryTintColor = checkbox.tintColor
        checkbox.stateChangeAnimation = .flat(M13Checkbox.AnimationStyle.fill)
        checkbox.translatesAutoresizingMaskIntoConstraints = true
        checkboxContainer.addSubview(checkbox)
    }

    private func addAndFocusAnnotation() {
        let annotation = MKPointAnnotation.random()
        mapView.addAnnotation(annotation)

        let viewRegion = MKCoordinateRegionMakeWithDistance(annotation.coordinate, 200, 200)
        let adjustedRegion = mapView.regionThatFits(viewRegion)
        mapView.setRegion(adjustedRegion, animated: true)
    }
}

extension RaceDetailsViewController: MKMapViewDelegate {

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        let annotationView = MKAnnotationView(annotation: annotation, reuseIdentifier: "reuse")
        annotationView.image = UIImage(asset: Asset.mapPin)
        return annotationView
    }
}
