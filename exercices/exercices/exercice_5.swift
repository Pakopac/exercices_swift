//
//  exercice5.swift
//  exercices
//
//  Created by SUP'Internet 05 on 29/11/2018.
//  Copyright © 2018 SUP'Internet 04. All rights reserved.
//

import Foundation
extension ApiManager {
    func getRandomUserHydratedWithPerson(completion: @escaping (Person) -> Void){
        do{
        getRandomUser(completion: { data in
            let result1 = data as! [String: Any]
            let result2 = result1["results"] as! [[String: Any]]
            let result3 = result2[0]
            let name = result3["name"] as! [String: String]
            let dob = result3["dob"] as! [String: Any]
            let date = dob["date"] as! String
            completion(Person(firstname: name["first"]!, lastname: name["last"]!, gender: Gender(rawValue: result3["gender"] as! String)!, email: result3["email"]! as! String, birthdate: (date: date, format: "yyyy-MM-dd'T'HH:mm:ssZ")))
        })
        }
    }
}
