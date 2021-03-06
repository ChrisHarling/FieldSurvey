//
//  FieldSet.swift
//  Field Survey
//
//  Created by Chris Harling on 5/2/19.
//  Copyright © 2019 Chris Harling. All rights reserved.
//

import UIKit

enum Classification: String, Codable {
    case amphibian
    case bird
    case reptile
    case fish
    case plant
    case insect
    case mammal
}

struct FieldObservationSet: Codable {
    var status: String
    var observations: [Observation]
}

struct Observation: Codable {
    var classification: Classification
    var title: String
    var description: String
    var date: Date
}

