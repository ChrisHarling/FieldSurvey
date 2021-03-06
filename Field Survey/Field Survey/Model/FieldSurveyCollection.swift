//
//  FieldSurveyCollection.swift
//  Field Survey
//
//  Created by Chris Harling on 5/2/19.
//  Copyright © 2019 Chris Harling. All rights reserved.
//

import Foundation

struct FieldSurveyCollection: Codable {
    var status: String
    var observations: [FieldSurvey]
    
    
    enum CodingKeys: String, CodingKey {
        case status
        case observations
    }
}

struct FieldSurvey: Codable {
    
    let classification: FieldSet
    let title: String
    let description: String
    let date: Date
}
