//
//  UIView+slideinFromLeftRight.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 26-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import Foundation
import UIKit


extension UIView {
    func slideInFromLeft(duration: TimeInterval) {

        let slideInFromLeftTransition = CATransition()
        slideInFromLeftTransition.type = kCATransitionPush
        slideInFromLeftTransition.subtype = kCATransitionFromLeft
        slideInFromLeftTransition.duration = duration
        slideInFromLeftTransition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        slideInFromLeftTransition.fillMode = kCAFillModeRemoved
        self.layer.add(slideInFromLeftTransition, forKey: "slideInFromLeftTransition")
    }

    func slideInFromRight(duration: TimeInterval) {
        let slideInFromLeftTransition = CATransition()
        slideInFromLeftTransition.type = kCATransitionPush
        slideInFromLeftTransition.subtype = kCATransitionFromRight
        slideInFromLeftTransition.duration = duration
        slideInFromLeftTransition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        slideInFromLeftTransition.fillMode = kCAFillModeRemoved
        self.layer.add(slideInFromLeftTransition, forKey: "slideInFromRightTransition")
    }
    func roTateAnimation(duration: TimeInterval) {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.fromValue = 0
        animation.toValue = CGFloat(.pi * 2.0)
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseOut)
        animation.duration = duration
        self.layer.add(animation, forKey: "transform.rotation")
    }
}
