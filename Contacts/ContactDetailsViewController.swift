//
//  ContactDetailsViewController.swift
//  Contacts
//
//  Created by Александр on 09.05.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        fullNameLabel.text = person.fullName
        phoneNumberLabel.text = "Phone: \(person.contacts.phoneNumber)"
        emailLabel.text = "Email: \(person.contacts.email)"
    }
    
}
