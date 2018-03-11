//
//  UIfont+size.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 11-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import Foundation
import UIKit

extension UIFont {
    static func normal() -> UIFont {
        return UIFont.systemFont(ofSize: 14)
    }

    static func title() -> UIFont {
        return UIFont.systemFont(ofSize: 18, weight: .heavy)
    }

    static func navBar() -> UIFont {
        return UIFont.systemFont(ofSize: 15, weight: .bold)
    }
}
