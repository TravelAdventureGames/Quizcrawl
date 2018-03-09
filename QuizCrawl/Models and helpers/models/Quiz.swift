//
//  Quiz.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 21-02-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import Foundation

struct Quiz {
    let name: String
    let questions: [String]
    let answers: [String]
    let quizId: String
    let playedBefore: Bool
}
