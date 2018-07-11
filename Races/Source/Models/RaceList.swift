//
//  RaceList.swift
//  Races
//
//  Created by Rafael Kayumov on 10.07.2018.
//  Copyright © 2018 Rafael Kayumov. All rights reserved.
//

import Foundation

class RaceList {

    var races: [Race]

    init?(jsonData: Data) {
        guard let races = try? JSONDecoder().decode([Race].self, from: jsonData) else { return nil }
        self.races = races
    }

    static func mockedInstance() -> RaceList? {
        guard let fileURL = Bundle.main.url(forResource: "RacesMock", withExtension: "json"),
        let data = try? Data(contentsOf: fileURL)
        else { return nil }

        let raceList = RaceList(jsonData: data)

        return raceList
    }

    func raceAtIndex(_ index: Int) -> Race? {
        guard races.indices.contains(index) else { return nil }
        return races[index]
    }
}
