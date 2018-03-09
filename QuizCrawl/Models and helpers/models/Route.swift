//
//  Route.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 21-02-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import Foundation

// MARK: - 
struct Route {
    let locations: [Location]
    let distance: Double
    let cityId: String
    let playedBefore: Bool
    let isPayed: Bool
}
