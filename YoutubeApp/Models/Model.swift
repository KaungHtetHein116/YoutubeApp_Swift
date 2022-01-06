//
//  Model.swift
//  YoutubeApp
//
//  Created by Kaung Htet Hein on 11/4/21.
//

import Foundation

protocol ModelDelegate {
    func videoFetched(_ videos: [Video])
}

class Model {
    
    var delegate: ModelDelegate?
    
    func getVideos () {
        
        let url = URL(string: Constants.API_URL)!
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil || data == nil {
                return
            }
            do {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                let response = try decoder.decode(Response.self, from: data!)
                DispatchQueue.main.async {
                    if response.items != nil {
                        self.delegate?.videoFetched(response.items!)
                    }
                }
            } catch {
                print("error ->", error)
            }
        }
        
        task.resume()
        
    }
}
