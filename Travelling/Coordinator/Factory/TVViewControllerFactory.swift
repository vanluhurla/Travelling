//
//  TVViewControllerFactory.swift
//  Travelling
//
//  Created by Vanessa Hurla on 20/02/2024.
//

import UIKit

class TVViewControllerFactory {
    
    func ticketsViewController(coordinator: TVTicketsViewModelCoordinator) -> UIViewController {
        let viewModel = TVTicketsViewModel(coordinator: coordinator)
        let viewController = TVTicketsViewController(viewModel: viewModel)
        return viewController
    }
}
