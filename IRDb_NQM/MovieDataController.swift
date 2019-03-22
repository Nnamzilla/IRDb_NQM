//
//  MovieDataController.swift
//  IRDb_NQM
//
//  Created by Nnamdi Massally on 3/18/19.
//  Copyright © 2019 Nnamdi Massally. All rights reserved.
//

import UIKit

class MovieDataController: NSObject {
    
    let JSONStringo = "https://api.myjson.com/bins/1e5uji"
    
    var dataArray = ["Unexpected item in baggage area"]
    
    var rebootDataModel: MovieDataModel
  
    
    // random code that might work
    /*
    let url = "https://restcountries.eu/rest/v2/all"
    let urlObj = URL(string: url)
    
    URLSession.shared.dataTask(with: urlObj!) {(data, response, error) in
    
        do {
            var countries = try JSONDecoder().decode([Country].self, from: data!)
            for country in countries {
                print(country.name + " - " + country.capital + " in " + country.region)
            }
        } catch {
            print("We got an error")
        }
    
        }.resume()
    */
    
    
    
    func getRebootData(completion: @escaping (_ success: Data) -> ()) {
        var success = Data()
        
        let trueRL = URL(string: JSONStringo)
        
        let task = URLSession.shared.dataTask(with: trueRL!) {
            (data, response, error) in
            
            guard let data = data else {
                return
            }
            
            success = data
            
            DispatchQueue.main.async {
                completion(success)
            }
            
        }
        
        task.resume()
    }

}
