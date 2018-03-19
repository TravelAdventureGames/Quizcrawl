//
//  SeparatorTableViewCell.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 11-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import UIKit

class SeparatorTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        setUp()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

    private func setUp() {
        self.backgroundColor = .clear
        self.isUserInteractionEnabled = false
    }
}
