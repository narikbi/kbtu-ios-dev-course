//
//  Question.swift
//  QuizUp
//
//  Created by Narikbi on 2/14/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import Foundation

enum Answer {
    case A
    case B
    case C
    case D
    case E
}

class Question {
    
    var text: String
    var variantA: String
    var variantB: String
    var variantC: String
    var variantD: String
    var variantE: String

    var answer: Answer
    
    init(text: String, variantA: String, variantB: String, variantC: String, variantD: String, variantE: String, answer: Answer) {
        
        self.text = text
        self.variantA = variantA
        self.variantB = variantB
        self.variantC = variantC
        self.variantD = variantD
        self.variantE = variantE

        self.answer = answer
        
    }
    
    
}
