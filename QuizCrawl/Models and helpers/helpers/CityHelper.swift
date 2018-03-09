//
//  CityHelper.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 09-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import Foundation
import UIKit

class CityHelper {
    private let cities: [City] = [
        City(location: CityID.getCityCoordinates(cityId: .AMS), routes: nil, cityName: "Amsterdam", image: #imageLiteral(resourceName: "amsterdamalgemeen"), cityId: .AMS, quote: "amsterdamQuote".localized),
        City(location: CityID.getCityCoordinates(cityId: .BER), routes: nil, cityName: "Berlin", image: #imageLiteral(resourceName: "berlijnalgemeen2"), cityId: .BER, quote: "berlinQuote".localized),
        City(location: CityID.getCityCoordinates(cityId: .UTR), routes: nil, cityName: "Utrecht", image: #imageLiteral(resourceName: "utrecht"), cityId: .UTR, quote: "utrechtQuote".localized),
        City(location: CityID.getCityCoordinates(cityId: .ROT), routes: nil, cityName: "Rotterdam", image: #imageLiteral(resourceName: "rotterdam"), cityId: .ROT, quote: "rotterdamQuote".localized),]

    public func getAllCities() -> [City] {
        return cities
    }
}
