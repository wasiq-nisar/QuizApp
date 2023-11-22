//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Muhammad Wasiq  on 06/11/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
//    let quiz = [
//        Question(q: "A slug's blood is green.", a: "True"),
//        Question(q: "Approximately one quarter of human bones are in the feet.", a: "True"),
//        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", a: "True"),
//        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", a: "True"),
//        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", a: "False"),
//        Question(q: "It is illegal to pee in the Ocean in Portugal.", a: "True"),
//        Question(q: "You can lead a cow down stairs but not up stairs.", a: "False"),
//        Question(q: "Google was originally called 'Backrub'.", a: "True"),
//        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", a: "True"),
//        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", a: "False"),
//        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", a: "False"),
//        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", a: "True")
//    ]
//
//    var questionNumber = 0
//    var score = 0
//
//    mutating func checkAns(_ userAnswer: String) -> Bool{
//        if userAnswer == quiz[questionNumber].answer {
//            score += 1
//            return true
//        }
//        else{
//            return false
//        }
//    }
//
//    func getQuestionText() -> String{
//        return quiz[questionNumber].text
//    }
//
//    func getProgress() -> Float{
//        let progress = Float(questionNumber) / Float(quiz.count)
//        return progress
//    }
//
//    mutating func nextQuestion() {
//        if questionNumber + 1 < quiz.count{
//            questionNumber += 1
//        }
//        else{
//            questionNumber = 0
//        }
//    }
//
//    func getScore() -> Int{
//        return score
//    }
    
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", o: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(q: "Five dollars is worth how many nickels?", o: ["25", "50", "100"], correctAnswer: "100"),
        Question(q: "What do the letters in the GMT time zone stand for?", o: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        Question(q: "What is the French word for 'hat'?", o: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(q: "In past times, what would a gentleman keep in his fob pocket?", o: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(q: "How would one say goodbye in Spanish?", o: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(q: "Which of these colours is NOT featured in the logo for Google?", o: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(q: "What alcoholic drink is made from molasses?", o: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(q: "What type of animal was Harambe?", o: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(q: "Where is Tasmania located?", o: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")
    ]
    
    var questionNumber = 0
    var score = 0
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    
    func getChoices() -> [String]{
        return quiz[questionNumber].options
    }
    
    mutating func checkAns(_ userAnswer: String) -> Bool{
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        }
        else{
            return false
        }
    }
    
    mutating func nextQuestion(){
        if questionNumber + 1 < quiz.count{
            questionNumber += 1
        }
        else{
            questionNumber = 0
        }
    }
    
    func getProgress() -> Float{
        let progress = Float(questionNumber) / Float(quiz.count)
        return progress
    }
    
    func getScore() -> Int{
        return score
    }
}


