//
//  ContactsWithSectionTableViewController.swift
//  PersonalList
//
//  Created by Evgenia Shipova on 08.09.2020.
//  Copyright © 2020 Evgenia Shipova. All rights reserved.
//

import UIKit

class ContactsWithSectionTableViewController: UITableViewController {
    
    var personalList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapBar = self.tabBarController
        let personalListVC = tapBar?.viewControllers?.first as! PersonalListTableViewController
        personalList = personalListVC.personalList
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactsWithSection", for: indexPath)
        
        let person = personalList[indexPath.section]
        let personInfo = [person.phone, person.email]
        let imageNames = ["phone", "tray"]

        cell.textLabel?.text = personInfo[indexPath.row]
        cell.imageView?.image = UIImage(systemName: imageNames[indexPath.row])

        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        personalList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let person = personalList[section]
        return person.fullName
    }
    
}
