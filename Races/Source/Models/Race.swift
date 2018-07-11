//
//  Race.swift
//  Races
//
//  Created by Rafael Kayumov on 10.07.2018.
//  Copyright © 2018 Rafael Kayumov. All rights reserved.
//

import Foundation

class Race: Decodable {

    var title = ""
    var personsCount = 0
    var distance = 0
    var startDateString = ""
    var creator: User?
    var imageName = ""
}
