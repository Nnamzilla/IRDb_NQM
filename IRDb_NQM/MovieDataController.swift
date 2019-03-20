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
    
    func getRebootData(completion: @escaping (_ success: Bool) -> ()) {
        var success = true
        
        let trueRL = URL(string: JSONStringo)
        
        let task = URLSession.shared.dataTask(with: trueRL!) { (data, response, error) in
            if let _ = data, error == nil {
                if let jsonObj = try? JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? NSDictionary {
                    
                    //getting the characters tag array from json and converting it to NSArray
                    if let veggieArray = jsonObj!.value(forKey:"characters") as? Array<String> {
                        self.dataArray = veggieArray
                        
                        // printing the json in console
                        print(jsonObj!.value(forKey: "characters")!)
                    }
                }
                
            } else {
                // we had an error or the data did
            }
        }
    }

}
