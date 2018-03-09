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
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
