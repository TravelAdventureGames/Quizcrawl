//
//  RoutesGeneralCell.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 10-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import UIKit

class RoutesGeneralCell: UITableViewCell {

    @IBOutlet var citynameLabel: UILabel!
    @IBOutlet var cityquoteLabel: UILabel!
    @IBOutlet var cityimageView: UIImageView!
    @IBOutlet var routeHeader: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    private func setupViews() {
        cityquoteLabel.roundedCorners(radius: 7, borderColor: .clear, borderWidth: 0)
        cityquoteLabel.backgroundColor = UIColor.overlayBackgroundColor()
    }

    func configure(city: City) {
        citynameLabel.text = city.cityName
        cityquoteLabel.text = city.quote
        cityimageView.image = city.image
        routeHeader.backgroundColor = UIColor.secondaryBackgroundColor()
        routeHeader.textColor = UIColor.secondaryTextColor()
        routeHeader.font = UIFont.title()
    }

}
