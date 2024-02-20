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
    private var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.backgroundColor = .systemPink
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    private var mainLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        view.addSubview(mainStackView)
        view.addSubview(mainLabel)
        
        
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor,
                                                   multiplier: 0.3),
            
            mainStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainStackView.centerYAnchor.constraint(equalTo: view.topAnchor, constant: view.bounds.height / 3 - 50),
            mainStackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8),
            mainStackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.20),
            
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            mainLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.10)
            
        ])
    }
}

