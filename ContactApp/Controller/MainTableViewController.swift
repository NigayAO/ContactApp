//
//  TableViewController.swift
//  ContactApp
//
//  Created by Alik Nigay on 09.11.2021.
//

import UIKit

class MainTableViewController: UITableViewController {
    
    private let persons = DataManager.getPerson()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.delegate = self
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        let person = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        cell.contentConfiguration = content
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactInfoVC = segue.destination as? ContactInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let person = persons[indexPath.row]
        contactInfoVC.person = person
    }
}

//MARK: - UITabBarControllerDelegate

extension MainTableViewController: UITabBarControllerDelegate { 
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        guard let viewControllers = tabBarController.viewControllers else { return false }
        viewControllers.forEach {
            if let groupTBC = $0 as? GroupTableViewController {
                groupTBC.persons = persons
            }
        }
        return true
    }
}
