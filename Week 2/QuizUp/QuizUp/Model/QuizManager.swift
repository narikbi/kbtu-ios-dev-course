//
//  QuizManager.swift
//  QuizUp
//
//  Created by Narikbi on 2/14/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import Foundation

class QuizManager {
    
    var questions = QuestionGenerator.getQuizQuestion()
    var currentIndex = 0
    var score = 0
    
    func getCurrentQuestion() -> Question {
        return questions[currentIndex]
    }
    
    
}
