//
//  TabBarViewController.swift
//  Contacts
//
//  Created by Александр on 11.05.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contacts = Person.getPersons()
        let contactsVC = viewControllers?.first as! ContactsViewController
        let secondContactsVC = viewControllers?.last as! SecondContactsViewController
        
        contactsVC.contacts = contacts
        secondContactsVC.contacts = contacts
    }
}
