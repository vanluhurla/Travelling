//
//  TVTabController.swift
//  Travelling
//
//  Created by Vanessa Hurla on 20/02/2024.
//

import UIKit

class TVTabController: UITabBarController {
    
    private let ticketsCoordinator: TVTicketsCoordinator
    
    init() {
        ticketsCoordinator = TVTicketsCoordinator(navigationController: UINavigationController())
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ticketsCoordinator.start()
        viewControllers = [ticketsCoordinator.navigationController]
        
    }
}
