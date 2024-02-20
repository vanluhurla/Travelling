//
//  TVTicketsViewController.swift
//  Travelling
//
//  Created by Vanessa Hurla on 20/02/2024.
//

import UIKit

class TVTicketsViewController: UIViewController {
    
    let coordinator: TVTicketsCoordinator
    
    init(coordinator: TVTicketsCoordinator) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
}

