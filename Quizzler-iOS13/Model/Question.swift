//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Muhammad Wasiq  on 06/11/2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let text: String
    let options: [String]
    let answer: String
    
    init(q: String, o: [String], correctAnswer: String) {
        self.text = q
        self.answer = correctAnswer
        self.options = o
    }
}
