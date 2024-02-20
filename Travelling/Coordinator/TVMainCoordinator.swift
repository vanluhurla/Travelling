//
//  TVMainCoordinator.swift
//  Travelling
//
//  Created by Vanessa Hurla on 20/02/2024.
//

import UIKit

enum TVTab: Int {
    case tickets
    
    var title: String {
        switch self {
        case .tickets:
            return "My Tickets"
        }
    }
    
    var icon: UIImage? {
        switch self {
        case .tickets:
            return UIImage(systemName: "ticket")
        }
    }
}

class TVMainCoordinator {
    let tabBarController = TVTabController()
}
