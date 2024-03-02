//
//  TabBarViewController.swift
//  ContactsList
//
//  Created by Denis Denisov on 27/2/24.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
    }
    
    private func setupTabBarController() {
        let persons = Person.getPersons()
        
        let contactListVC = viewControllers?.first as? ContactListViewController
        let openContactsLestVC = viewControllers?.last as? OpenContactListViewController
        
        contactListVC?.persons = persons
        openContactsLestVC?.persons = persons
    }
    
}
