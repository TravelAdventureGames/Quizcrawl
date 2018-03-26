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

    //blue
    static func secondaryTextColor() -> UIColor {
        return UIColor(red: 0/255, green: 82/255, blue: 159/255, alpha: 1)
    }
    //red
    static func titleTextColor() -> UIColor {
        return UIColor(red: 160.0/255.0, green: 67.0/255.0, blue: 61.0/255.0, alpha: 1.0)
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

    //blue
    static func secondaryBackgroundColor() -> UIColor {
        return UIColor(red: 99.0/255.0, green: 221.0/255.0, blue: 222.0/255.0, alpha: 1)
    }
}
