//
//  ContactsViewController.swift
//  Contacts
//
//  Created by Александр on 07.05.2022.
//

import UIKit

class ContactsViewController: UITableViewController {

    var contacts: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = contacts[indexPath.row]
        
        content.text = person.fullName
        
        cell.contentConfiguration = content
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactDetailsVC.person = contacts[indexPath.row]
        
    }
    
}
