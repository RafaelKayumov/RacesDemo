//
//  User.swift
//  Races
//
//  Created by Rafael Kayumov on 10.07.2018.
//  Copyright © 2018 Rafael Kayumov. All rights reserved.
//

import Foundation

class User: Decodable {

    var fullName = ""
    var timeInterval: Double = 0
    var distance = 0
    var calories = 0
    var locationTitle = ""
}
