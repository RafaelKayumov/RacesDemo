//
//  MKPointAnnotation+Random.swift
//  Races
//
//  Created by Rafael Kayumov on 11.07.2018.
//  Copyright © 2018 Rafael Kayumov. All rights reserved.
//

import UIKit
import MapKit

extension MKPointAnnotation {

    static func random() -> MKPointAnnotation {
        let latitude: CLLocationDegrees = 40.705997
        let longitude: CLLocationDegrees = -74.012567
        let location = CLLocationCoordinate2DMake(latitude, longitude)

        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        return annotation
    }
}
