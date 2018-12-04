//
//  main.swift
//  exercice
//
//  Created by SUP'Internet 09 on 09/11/2018.
//  Copyright © 2018 SUP'Internet 09. All rights reserved.
//

import Foundation

print("Hello, World!")

condog(str: "b", prefix: "a", suffix: "c")

cleanHobbits(arr: ["Frodo", "Aragorn", "Boromir", "Legolas", "Gimli", "Gandalf", "Samsaget"])

let a = "2018".toDate(format:"yyyy")
print(a.toString(format: "yyyy"))

let year1 = "2018".toDate(format:"yyyy")
let year2 = "2000".toDate(format: "yyyy")

print(year1.getYearDifferenceFrom(date: year2))

let printEmail = Email(email: "b.com")
print(printEmail.isValid())

let user = Existence(date: "1999".toDate(format: "yyyy"))
print(user.willProbablyDieSoon())

let firstname = "Lilian"
let lastname = "Pacaud"
let gender = "Male"
let email = "lilian.pacaud@supinternet.fr"
let birthdate1 = "01/04/1999".toDate(format: "dd/MM/yyyy")
let birthdate2 = "01/04/1999"
let format = "dd/MM/YYYY"

let person = Person(firstname: firstname, lastname: lastname, gender: .Male, email: email, birthdate: birthdate1)
let person2 = Person(firstname: firstname, lastname: lastname, gender: .Male, email: email, birthdate: (date: birthdate2, format: format))
person.show()
person2.show()

let api_manager = ApiManager()
api_manager.getRandomUser(completion: { data in
    print(data)
})

api_manager.getRandomUserHydratedWithPerson(completion: { person in
    print(person.show())
})
RunLoop.main.run()
