//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var LoadingBar: UIProgressView!
    
    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    var quizBrain = QuizBrain()
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
//        let userAnswer = sender.currentTitle!
//        //let actualAnswer = quiz[questionNumber].answer
//        var res = quizBrain.checkAns(userAnswer)
//
//        if res{
//            sender.backgroundColor = UIColor.green
//        }
//        else{
//            sender.backgroundColor = UIColor.red
//        }
//
//        quizBrain.nextQuestion()
//        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
        let userAns = sender.currentTitle!
        var res = quizBrain.checkAns(userAns)
        if res == true{
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @objc func updateUI(){
//        questionText.text = quizBrain.getQuestionText()
//        LoadingBar.progress = quizBrain.getProgress()
//        ScoreLabel.text = "Score: \(quizBrain.getScore())"
//        trueButton.backgroundColor = UIColor.clear
//        falseButton.backgroundColor = UIColor.clear
        questionText.text = quizBrain.getQuestionText()
        var ansChoices = quizBrain.getChoices()
        choice1.setTitle(ansChoices[0], for: .normal)
        choice2.setTitle(ansChoices[1], for: .normal)
        choice3.setTitle(ansChoices[2], for: .normal)
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        LoadingBar.progress = quizBrain.getProgress()
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
    }
}

