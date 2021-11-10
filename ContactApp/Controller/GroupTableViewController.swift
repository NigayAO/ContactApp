//
//  InfoTableViewController.swift
//  ContactApp
//
//  Created by Alik Nigay on 09.11.2021.
//

import UIKit

class GroupTableViewController: UITableViewController {
    
    var persons: [Person]!

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellOne = tableView.dequeueReusableCell(withIdentifier: "information", for: indexPath)
        var content = cellOne.defaultContentConfiguration()
        let person = persons[indexPath.section]
        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone.circle")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "message.circle")
        }
        cellOne.contentConfiguration = content
        return cellOne
    }
    
}
