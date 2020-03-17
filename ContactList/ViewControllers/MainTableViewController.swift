//
//  TableViewController.swift
//  ContactList
//
//  Created by Михаил Малышев on 17/03/2020.
//  Copyright © 2020 Mikhail Malyshev. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    // MARK: - Public Properties
    
    var contacts = Person.getPersonList()

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameSurname", for: indexPath)
        let fullName = contacts[indexPath.row]
        cell.textLabel?.text = fullName.nameWithSurname
        return cell
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailContactVC = segue.destination as! DetailViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailContactVC.contactDetail = contacts[indexPath.row]
    }
}
