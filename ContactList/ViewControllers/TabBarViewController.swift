//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Михаил Малышев on 23/03/2020.
//  Copyright © 2020 Mikhail Malyshev. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let persons = Person.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupViewControllers(with: persons)
    }
    
    private func setupViewControllers(with persons: [Person]) {
        let contactListVC = viewControllers?.first as! MainTableViewController
        let sectionVC = viewControllers?.last as! SectionTableViewController
        
        contactListVC.contacts = persons
        sectionVC.contacts = persons
    }
}
