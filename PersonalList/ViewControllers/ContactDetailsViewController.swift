//
//  ContactDetailsViewController.swift
//  PersonalList
//
//  Created by Evgenia Shipova on 08.09.2020.
//  Copyright © 2020 Evgenia Shipova. All rights reserved.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "Email: \(person.email)"
        navigationItem.title = person.fullName
    }
}
