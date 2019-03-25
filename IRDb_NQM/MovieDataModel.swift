//
//  MovieDataModel.swift
//  IRDb_NQM
//
//  Created by Nnamdi Massally on 3/18/19.
//  Copyright © 2019 Nnamdi Massally. All rights reserved.
//

import UIKit

class MovieDataModel: Codable {

    var franchise: [Franchise]
    
    class Franchise : Codable {
        let franchiseName: String
        let entries: [Entry]
    }
    
    class Entry : Codable {
        let name: String
        let format: String
        let yearStart: String
        let yearEnd: String?
        let episodes: Int?
        let studio: String?
        let network: String?
        let imageURL: String
        let description: String
        let summary: String
    }
    
    
}
