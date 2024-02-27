//
//  TabBarViewController.swift
//  ContactsList
//
//  Created by Denis Denisov on 27/2/24.
//

import UIKit

class TabBarViewController: UITabBarController {

    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        transferData()
    }
    
    private func transferData() {
        guard let viewControllers else { return }
        
        viewControllers.forEach { viewController in
            let navigationVC = viewController as? UINavigationController
            
            if let contactListVC = navigationVC?.topViewController as? ContactListViewController {
                contactListVC.persons = persons
            } else if let openContactListVC = navigationVC?.topViewController as?
                        OpenContactListViewController {
                openContactListVC.persons = persons
            }
        }
    }
    
}
