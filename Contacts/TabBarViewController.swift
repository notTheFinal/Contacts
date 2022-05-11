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
        let navigationController = viewControllers?.first as! UINavigationController
        let contactsVC = navigationController.topViewController as! ContactsViewController
        let secondContactsVC = viewControllers?.last as! SecondContactsViewController
        
        contactsVC.contacts = contacts
        secondContactsVC.contacts = contacts
    }
}
