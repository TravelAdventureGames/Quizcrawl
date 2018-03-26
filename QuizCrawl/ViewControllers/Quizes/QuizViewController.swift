//
//  QuizViewController.swift
//  QuizCrawl
//
//  Created by Martijn van Gogh on 26-03-18.
//  Copyright © 2018 Martijn van Gogh. All rights reserved.
//

import UIKit

enum QuizRound {
    case Round1
    case Round2
    case Round3
    case Round4

    func getFirstIndexForRound() -> Int {
        switch self {
        case .Round1:
            return 0
        case .Round2:
            return 16
        case .Round3:
            return 31
        case .Round4:
            return 46
        }
    }
}

class QuizViewController: UIViewController {
    @IBOutlet var questionNumberLabel: RoundedLabel!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var questionLabel: UILabel!
    
    var quiz: Quiz?
    var currentQuestionIndex = 0 {
        didSet {
            print(currentQuestionIndex)
        }
    }
    let transitionDuration = 0.6
    var round: QuizRound = .Round1

    init(quizRound: QuizRound) {
        round = quizRound
        currentQuestionIndex = quizRound.getFirstIndexForRound()
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    //TODO: - Set quiz from collection or tableview
    override func viewDidLoad() {
        super.viewDidLoad()
        let helper = Quizhelper()
        quiz = helper.getAllQuizes()[0]
        questionLabel.text = quiz?.questions[currentQuestionIndex]
        questionNumberLabel.text = "Q\(currentQuestionIndex + 1)"
    }

    private func presentNextQuestion() {
        guard let quiz = quiz else { return }
        let questions = quiz.questions
        switch currentQuestionIndex {
        case 15, 30, 45, 60:
            print("Present answerVC")
        default:
            currentQuestionIndex += 1
            questionLabel.text = questions[currentQuestionIndex]
            questionLabel.slideInFromRight(duration: transitionDuration)
            questionNumberLabel.text = "Q\(currentQuestionIndex + 1)"
            questionNumberLabel.roTateAnimation(duration: transitionDuration)
        }
    }

    private func presentFormerQuestion() {

    }

    @IBAction func performLeftSwipe(_ sender: UISwipeGestureRecognizer) {
        print("swipeLeft")
        presentNextQuestion()
    }

    @IBAction func performRightSwipe(_ sender: UISwipeGestureRecognizer) {
        print("swipeRight")
        presentFormerQuestion()
    }

    private func decideOnCurrentindexStateNextquestion() {

    }
    
}
