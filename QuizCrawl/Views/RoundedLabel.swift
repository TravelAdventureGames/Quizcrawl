//
//  RoundedLabel.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 26-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import UIKit

class RoundedLabel: UILabel {

    // MARK: - Initialize

    override init(frame: CGRect) {
        super.init(frame: frame)

        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        commonInit()
    }

    private func commonInit() {
        layer.borderColor = UIColor.titleTextColor().cgColor
        layer.borderWidth = self.bounds.width * 0.13
        self.backgroundColor = UIColor.secondaryTextColor()
        self.textColor = .white
        self.font = UIFont.systemFont(ofSize: 21, weight: .black)
        clipsToBounds = true
    }

    // MARK: - Layout

    override func layoutSubviews() {
        super.layoutSubviews()

        layer.cornerRadius = bounds.height / 2
    }
}
