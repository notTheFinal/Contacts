//
//  SecondContactsViewController.swift
//  Contacts
//
//  Created by Александр on 11.05.2022.
//

import UIKit

class SecondContactsViewController: UITableViewController {

    var contacts: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contacts[indexPath.section]
        
        switch indexPath.row {
        case 0:
            content.image = UIImage(systemName: "iphone.homebutton")
            content.text = contact.contacts.phoneNumber
        default:
            content.image = UIImage(systemName: "tray.fill")
            content.text = contact.contacts.email
        }
        
        cell.contentConfiguration = content
        
        return cell
    }
}
