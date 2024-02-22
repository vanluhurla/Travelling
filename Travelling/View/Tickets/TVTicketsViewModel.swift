//
//  TVTicketsViewModel.swift
//  Travelling
//
//  Created by Vanessa Hurla on 21/02/2024.
//

import Foundation

struct TVTicketsViewModelConfiguration {
    let details = TVTicketsDetails()
}

protocol TVTicketsViewModelDelegate: AnyObject {
    func didReceiveContent(configuration: TVTicketsViewModelConfiguration)
}

protocol TVTicketsViewModelCoordinator: AnyObject {
}

class TVTicketsViewModel: NSObject {
    
    weak var coordinator: TVTicketsViewModelCoordinator?
    weak var delegate: TVTicketsViewModelDelegate?
    
    var configuration = TVTicketsViewModelConfiguration()
    
    init(coordinator: TVTicketsViewModelCoordinator? = nil) {
        self.coordinator = coordinator
    }
    
    func loadData() {
        delegate?.didReceiveContent(configuration: configuration)
    }
}
