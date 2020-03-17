//
//  DetailViewController.swift
//  ContactList
//
//  Created by Михаил Малышев on 17/03/2020.
//  Copyright © 2020 Mikhail Malyshev. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - IB Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    //MARK: - Public Properties
    
    var contactDetail: Person!
    
    //MARK: - Life Cycles Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = contactDetail.nameWithSurname
        phoneNumberLabel.text = "Phone Number: \(contactDetail.phoneNumber)"
        emailLabel.text = " E-mail: \(contactDetail.email)"
    }
}
