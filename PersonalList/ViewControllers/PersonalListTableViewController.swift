//
//  MainTableViewController.swift
//  PersonalList
//
//  Created by Evgenia Shipova on 07.09.2020.
//  Copyright © 2020 Evgenia Shipova. All rights reserved.
//

import UIKit

class PersonalListTableViewController: UITableViewController {
    
    let personalList = Person.getPersonalList()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.topItem?.title = "Persons list"
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personalList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        
        let person = personalList[indexPath.row]

        cell.textLabel?.text = person.fullName

        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactDetailVC.person = personalList[indexPath.row]
    }
}
