//
//  TVTicketsViewController.swift
//  Travelling
//
//  Created by Vanessa Hurla on 20/02/2024.
//

import UIKit

class TVTicketsViewController: UIViewController {
    
    private var backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
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
        setupUI()
    }
}

extension TVTicketsViewController {
    func setupUI() {
        setupViews()
        layoutViews()
    }
    
    func setupViews() {
        view.addSubview(backgroundView)
        
        
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor,
                                                   multiplier: 0.3)
        ])
    }
}

