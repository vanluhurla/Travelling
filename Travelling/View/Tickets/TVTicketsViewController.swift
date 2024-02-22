//
//  TVTicketsViewController.swift
//  Travelling
//
//  Created by Vanessa Hurla on 20/02/2024.
//

import UIKit
import Lottie

class TVTicketsViewController: UIViewController {
    
    private var animationView: LottieAnimationView = {
        let animationView = LottieAnimationView()
        animationView.alpha = 0.6
        animationView.loopMode = .loop
        animationView.translatesAutoresizingMaskIntoConstraints = false
        return animationView
    }()
    private var backgroundView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemMint
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var ticketView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.masksToBounds = false
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.1
        view.layer.shadowOffset = CGSize(width: 0, height: 5)
        view.layer.shadowRadius = 5
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    private var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.layer.cornerRadius = 16
        stackView.spacing = 0
        stackView.backgroundColor = .clear
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    private var ticketTitleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private var weekdayTextLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private var departureTimeLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private var delayTimeLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.textColor = .red
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private var arrivalTimeLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private var forecastLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private var platformTextLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    private var reasonsTextLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.textColor = .gray
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let viewModel: TVTicketsViewModel
    
    init(viewModel: TVTicketsViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
        self.viewModel.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        viewModel.loadData()
        setupUI()
    }
}

extension TVTicketsViewController: TVTicketsViewModelDelegate {
    func didReceiveContent(configuration: TVTicketsViewModelConfiguration) {
        reasonsTextLabel.text = configuration.details.textMainLabel
        ticketTitleLabel.text = configuration.details.firstTicketLabel
        weekdayTextLabel.text = configuration.details.secondTicketLabel
        departureTimeLabel.text = configuration.details.thirdTicketLabel
        delayTimeLabel.text = configuration.details.fourthTicketLabel
        arrivalTimeLabel.text = configuration.details.fifthTicketLabel
        forecastLabel.text = configuration.details.sixthTicketLabel
        platformTextLabel.text = configuration.details.seventhTicketLabel
        animationView.animation = LottieAnimation.named(configuration.details.animation)
        animationView.play()
    }
}

extension TVTicketsViewController {
    func setupUI() {
        setupViews()
        layoutViews()
        mainStackViewIndentation()
    }
    
    func setupViews() {
        view.addSubview(backgroundView)
        view.addSubview(reasonsTextLabel)
        view.addSubview(ticketView)
        view.addSubview(animationView)
        ticketView.addSubview(mainStackView)
        mainStackView.addArrangedSubview(ticketTitleLabel)
        mainStackView.setCustomSpacing(14, after: ticketTitleLabel)
        mainStackView.addArrangedSubview(weekdayTextLabel)
        mainStackView.setCustomSpacing(10, after: weekdayTextLabel)
        mainStackView.addArrangedSubview(departureTimeLabel)
        mainStackView.addArrangedSubview(delayTimeLabel)
        mainStackView.setCustomSpacing(8, after: delayTimeLabel)
        mainStackView.addArrangedSubview(arrivalTimeLabel)
        mainStackView.addArrangedSubview(forecastLabel)
        mainStackView.setCustomSpacing(10, after: forecastLabel)
        mainStackView.addArrangedSubview(platformTextLabel)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.3),
            
            ticketView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ticketView.centerYAnchor.constraint(equalTo: view.topAnchor, 
                                                constant: view.bounds.height / 3 - 50),
            ticketView.widthAnchor.constraint(equalTo: view.widthAnchor, 
                                              multiplier: 0.8),
            ticketView.heightAnchor.constraint(equalTo: view.heightAnchor, 
                                               multiplier: 0.25),
            
            mainStackView.leadingAnchor.constraint(equalTo: ticketView.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: ticketView.trailingAnchor),
            mainStackView.topAnchor.constraint(equalTo: ticketView.topAnchor),
            mainStackView.heightAnchor.constraint(equalTo: ticketView.heightAnchor),

            
            reasonsTextLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            reasonsTextLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            reasonsTextLabel.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5),
            reasonsTextLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.10),
            
            animationView.widthAnchor.constraint(equalToConstant: 100),
            animationView.heightAnchor.constraint(equalToConstant: 100),
            animationView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            animationView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100)
        ])
    }
    
    func mainStackViewIndentation() {
        mainStackView.isLayoutMarginsRelativeArrangement = true
        mainStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16,
                                                                         leading: 16,
                                                                         bottom: 16,
                                                                         trailing: 16)
    }
}

