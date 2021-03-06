//
//  FieldSurveyJSONParser.swift
//  Field Survey
//
//  Created by Chris Harling on 5/2/19.
//  Copyright © 2019 Chris Harling. All rights reserved.
//

import Foundation

class FieldSurveyJSONParser {
    class func load(jsonFileName: String) -> FieldSurveyCollection? {
            var fieldSurveyCollection: FieldSurveyCollection?
            let jsonDecoder = JSONDecoder()
            
            if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
                let jsonData = try? Data(contentsOf: jsonFileUrl) {
                fieldSurveyCollection = try? jsonDecoder.decode(FieldSurveyCollection.self, from: jsonData)
            }
            
            return fieldSurveyCollection
        }
}

