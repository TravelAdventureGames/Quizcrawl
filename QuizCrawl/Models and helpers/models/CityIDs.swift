//
//  CityIDs.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 09-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import Foundation
import MapKit

enum CityID {
    case AMS
    case UTR
    case ROT
    case BER

    static func getCityCoordinates(cityId: CityID) -> CLLocationCoordinate2D {
        switch cityId {
        case .AMS:
            return CLLocationCoordinate2D(latitude: 52.370998, longitude: 4.895683)
        case .ROT:
            return CLLocationCoordinate2D(latitude: 51.924564, longitude: 4.469118)
        case .UTR:
            return CLLocationCoordinate2D(latitude: 52.096823, longitude: 5.099656)
        case .BER:
            return CLLocationCoordinate2D(latitude: 52.510693, longitude: 13.410969)
        }
    }

    
}
