//
//  TVTicketsCoordinator.swift
//  Travelling
//
//  Created by Vanessa Hurla on 20/02/2024.
//

import UIKit

class TVTicketsCoordinator {
    
    let navigationController: UINavigationController
    let tab = TVTab.tickets
    private let viewFactory = TVViewControllerFactory()
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.pushViewController(viewFactory.ticketsViewController(coordinator: self), animated: false)
        setupTab()
    }
    
    func setupTab() {
        navigationController.tabBarItem = UITabBarItem(title: tab.title, image: tab.icon, tag: tab.rawValue)
    }
}
