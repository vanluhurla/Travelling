//
//  TVViewControllerFactory.swift
//  Travelling
//
//  Created by Vanessa Hurla on 20/02/2024.
//

import UIKit

class TVViewControllerFactory {
    
    func ticketsViewController(coordinator: TVTicketsCoordinator) -> UIViewController {
        let viewController = TVTicketsViewController(coordinator: coordinator)
        return viewController
    }
}
