//
//  CityCell.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 09-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import UIKit

class CityCell: UITableViewCell {

    @IBOutlet var cityNameLabel: UILabel!
    @IBOutlet var distanceLabel: UILabel!
    @IBOutlet var cityImageview: UIImageView!
    


    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        self.contentView.frame = UIEdgeInsetsInsetRect(contentView.frame, UIEdgeInsetsMake(0, 12, 0, 12))
        distanceLabel.roundedCorners(radius: 7, borderColor: .clear, borderWidth: 0)
        self.contentView.layer.cornerRadius = 7
        self.contentView.layer.masksToBounds = true
    }
}
