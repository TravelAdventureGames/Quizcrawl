//
//  string+localized.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 09-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
