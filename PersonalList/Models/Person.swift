//
//  Person.swift
//  PersonalList
//
//  Created by Evgenia Shipova on 07.09.2020.
//  Copyright © 2020 Evgenia Shipova. All rights reserved.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getPersonalList() -> [Person] {
        var persons = [Person]()
        let dataManager = DataManager()
        
        let countsElements = [
            dataManager.names.count,
            dataManager.surnames.count,
            dataManager.phones.count,
            dataManager.emails.count
        ]
        
        if let minValue = countsElements.min() {
            for _ in 1...minValue {
                let randomNameIndex = Int.random(in: 0..<dataManager.names.count)
                let randomSurnameIndex = Int.random(in: 0..<dataManager.surnames.count)
                let randomPhoneIndex = Int.random(in: 0..<dataManager.phones.count)
                let randomEmailIndex = Int.random(in: 0..<dataManager.emails.count)
                
                persons.append(Person(
                    name: dataManager.names[randomNameIndex],
                    surname: dataManager.surnames[randomSurnameIndex],
                    phone: dataManager.phones[randomPhoneIndex],
                    email: dataManager.emails[randomEmailIndex])
                )
                
                dataManager.names.remove(at: randomNameIndex)
                dataManager.surnames.remove(at: randomSurnameIndex)
                dataManager.phones.remove(at: randomPhoneIndex)
                dataManager.emails.remove(at: randomEmailIndex)
            }
        }
        return persons
    }
}

class DataManager {
    var names = [
        "Mac",
        "Zachary",
        "Tim",
        "Emily",
        "Karen",
        "Steve",
        "Clark",
        "Greta",
        "Evelyn",
        "Scott"
    ]
    var surnames = [
        "Smith",
        "Scott",
        "Jones",
        "Watson",
        "Dern",
        "Cooper",
        "Robinson",
        "Curtis",
        "Young",
        "Davis"
    ]
    var phones = [
        "8920347388",
        "8920002341",
        "8920567871",
        "8920284570",
        "8920025435",
        "8920253464",
        "8923733839",
        "8923234234",
        "8922342349",
        "8920937489"
    ]
    var emails = [
        "aa@gmail.com",
        "ggg@gmail.com",
        "sf3@gmail.com",
        "dfg32@gmail.com",
        "hhh@gmail.com",
        "kkk@gmail.com",
        "aee@gmail.com",
        "refg4@gmail.com",
        "rdg3@gmail.com",
        "drg@gmail.com"
    ]
}
