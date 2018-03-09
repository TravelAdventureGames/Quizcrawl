//
//  Location.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 21-02-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import Foundation
import CoreLocation

struct Location {
    let locationDetails: LocationDetails?
    let description: String
}

struct LocationDetails {
    let name: String
    let street: String
    let streetNo: String
    let rating: String
    let phoneNo: String
    let coordinate: CLLocationCoordinate2D
    let place_id: String?
}
