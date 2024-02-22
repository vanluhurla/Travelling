//
//  TVTicketsStringKeys.swift
//  Travelling
//
//  Created by Vanessa Hurla on 21/02/2024.
//

import Foundation

enum TVTicketsStringKeys: String {
    case reasonsTextLabel = "reasons"
    case ticketTitleLabel = "my ticket"
    case weekdayTextLabel = "weekday"
    case departureTimeLabel = "first time"
    case delayTimeLabel = "delay"
    case arrivalTimeLabel = "second time"
    case forecastLabel = "on time"
    case platformLabel = "platform"
    
    var localised: String {
        NSLocalizedString(self.rawValue, comment: "")
    }
}
