//
//  exercice_4.swift
//  exercices
//
//  Created by SUP'Internet 05 on 29/11/2018.
//  Copyright © 2018 SUP'Internet 04. All rights reserved.
//

import Foundation

class ApiManager{
    static let sharedInstance = ApiManager()
    var baseURL : String = "https://api.randomuser.me/"
    func getRandomUser(completion: @escaping (Any) -> Void) {
        var request = URLRequest(url : URL(string: baseURL)!)
        request.httpMethod = "GET"
        URLSession.shared.dataTask(with: request){data,response,err in
            do{
                let json = try JSONSerialization.jsonObject(with: data!, options: [])
                completion(json)
            } catch let error as NSError{
                print(error)
            }
            }.resume()
    }
    
}

