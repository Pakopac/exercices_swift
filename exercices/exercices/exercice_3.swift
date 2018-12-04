//
//  exercice_3.swift
//  exercices
//
//  Created by Utilisateur invité on 21/11/2018.
//  Copyright © 2018 SUP'Internet 04. All rights reserved.
//

import Foundation

extension String{
    func toDate(format: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let date = dateFormatter.date(from:self)
        return date!
    }
}

extension Date{
    
    func toString(format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        let newDate: String = dateFormatter.string(from: self)
        return newDate
    }
    
    func getYearDifferenceFrom(date: Date) -> Int {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy"
        let year = Int(dateFormatter.string(from: self))
        let year2 = Int(dateFormatter.string(from: date))
        return year! - year2!
    }
    
}

struct Email {
    var email: String?;
    
    init(email: String) {
        self.email = email
    }
    
    func isValid() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self.email)
    }
    
}

class Existence {
    var birthdate: Date;
    var age: Int;
    
    init(date: Date?) {
        self.birthdate = date!
        let date = Date()
        self.age = date.getYearDifferenceFrom(date: self.birthdate)
    }
    
    func willProbablyDieSoon() -> Bool {
        if self.age > 100 {
            return true
        }
        else{
            return false
        }
    }
}

enum Gender : String{
    case Male = "male"
    case Female = "female"
    case Other = "other"
}

class Person : Existence{
    
    var gender : Gender
    var firstname : String
    var lastname : String
    var email : Email
    
    init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: (date: String, format: String)){
        self.gender = gender
        self.firstname = firstname
        self.lastname = lastname
        self.email = Email(email: email)
        
        super.init(date: birthdate.date.toDate(format: birthdate.format))

     }
    init(firstname: String, lastname: String, gender: Gender, email: String, birthdate: Date){
        self.gender = gender
        self.firstname = firstname
        self.lastname = lastname
        self.email = Email(email: email)
        
        super.init(date: birthdate)
    }
    
    func show() {
        
        print("firstname : \(self.firstname) ")
        print("lastname : \(self.lastname) ")
        
        switch self.gender {
        case .Male:
            print("gender : Male")
        case .Female:
            print("gender : Male")
        case .Other:
            print("gender : Other")
        }
        
        print("email valid : \(self.email.isValid())")
        print("email : \(self.email)")
        
        print("birthdate : \(self.birthdate)")
        print("age : \(self.age)")
        print("will die soon : \(self.willProbablyDieSoon())")
        
    }	
}
