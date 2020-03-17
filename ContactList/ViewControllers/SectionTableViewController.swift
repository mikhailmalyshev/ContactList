//
//  SectionTableViewController.swift
//  ContactList
//
//  Created by Михаил Малышев on 17/03/2020.
//  Copyright © 2020 Mikhail Malyshev. All rights reserved.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    private var contacts: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstTabController = tabBarController?.viewControllers?.first as! MainTableViewController
        self.contacts = firstTabController.contacts
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contact = contacts[indexPath.section]
        var information = ""
        switch indexPath.row {
        case 0:
            information = "Phone Number: \(contact.phoneNumber)"
        case 1:
            information = "E-mail: \(contact.email)"
        default:
            information = "None"
        }
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = information
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let fullName = contacts[section].nameWithSurname
        return fullName
    }
}
