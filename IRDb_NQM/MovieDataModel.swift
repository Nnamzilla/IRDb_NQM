//
//  MovieDataModel.swift
//  IRDb_NQM
//
//  Created by Nnamdi Massally on 3/18/19.
//  Copyright © 2019 Nnamdi Massally. All rights reserved.
//

import UIKit

class MovieDataModel: NSObject, Codable {

    var franchise: [Franchises]
    
    struct Franchises : Codable {
        let franchiseName: String
        let entries: [Entries]
    }
    
    struct Entries : Codable {
        let name: String
        let format: String
        let yearStart: String
        let yearEnd: String?
        let episodes: Int?
        let studio: String?
        let imageURL: String
//      let description: String
        let summary: String
    }
    
    
}
