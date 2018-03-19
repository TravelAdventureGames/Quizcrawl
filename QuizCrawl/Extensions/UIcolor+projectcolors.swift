//
//  UIcolor+projectcolors.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 10-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    static func mainTextColor() -> UIColor {
        return .black
    }

    static func secondaryTextColor() -> UIColor {
        return UIColor(red: 0/255, green: 82/255, blue: 159/255, alpha: 1)
    }

    static func titleTextColor() -> UIColor {
        return UIColor(red: 0/255, green: 82/255, blue: 159/255, alpha: 1)
    }

    static func subTitleTextColor() -> UIColor {
        return .black
    }

    static func overlayTextColor() -> UIColor {
        return .black
    }

    static func overlayBackgroundColor() -> UIColor {
        return UIColor.white.withAlphaComponent(0.4)
    }

    static func mainBackgroundColor() -> UIColor {
        return .white
    }

    static func secondaryBackgroundColor() -> UIColor {
        return .white
    }
}
