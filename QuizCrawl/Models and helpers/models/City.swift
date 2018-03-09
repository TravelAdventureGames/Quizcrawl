//
//  City.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 21-02-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import Foundation
import UIKit
import MapKit

struct City {
    let location: CLLocationCoordinate2D
    let routes: [Route]?
    let cityName: String
    let image: UIImage
    let cityId: CityID
    let quote: String

    var loc: CLLocation {
        return CLLocation(latitude: location.latitude, longitude: location.longitude)
    }

    func distance(to location: CLLocation) -> CLLocationDistance {
        return location.distance(from: self.loc)
    }
}
