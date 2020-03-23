//
//  SectionTableViewController.swift
//  ContactList
//
//  Created by Михаил Малышев on 17/03/2020.
//  Copyright © 2020 Mikhail Malyshev. All rights reserved.
//

import UIKit

class SectionTableViewController: UITableViewController {
    
    //MARK: - Private Properties
    
    var contacts: [Person]!

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerView = UIView()
        
        let label = UILabel(frame: CGRect(x: 20, y: 3, width: 300, height: 20))
        label.text = contacts[section].nameWithSurname
        label.textColor = .white
        
        headerView.addSubview(label)
        return headerView
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.backgroundColor = .gray
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let contact = contacts[indexPath.section]
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = contact.phoneNumber
            cell.imageView?.image = UIImage(systemName: Contacts.phone.rawValue)
        default:
            cell.textLabel?.text = contact.email
            cell.imageView?.image = UIImage(systemName: Contacts.email.rawValue)
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let fullName = contacts[section].nameWithSurname
        return fullName
    }
}
