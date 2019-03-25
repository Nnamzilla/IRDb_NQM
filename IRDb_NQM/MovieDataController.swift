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
    var dataModel: Any?
    
    var rebootDataModel: MovieDataModel?
  
    
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
    
    
    
    func getRebootData(completion: @escaping (_ success: MovieDataModel) -> ()) {
        // var success = Data()
        
        let trueRL = URL(string: JSONStringo)
        
        let task = URLSession.shared.dataTask(with: trueRL!) {
            (data, response, error) in
            
            guard let data = data else {
                return
            }
            
            do {
                
                let decoder = JSONDecoder()
                let mediaData = try decoder.decode(MovieDataModel.self, from: data)
                
                self.dataModel = mediaData
                
                
                
            } catch let err {
                print("Err", err)
            }
            
            // return to main ther==read
            DispatchQueue.main.async {
                completion(self.dataModel as! MovieDataModel)
            }
            
        }
        
        task.resume()
    }

}
