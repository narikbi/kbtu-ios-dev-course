//
//  QuestionGenerator.swift
//  QuizUp
//
//  Created by Narikbi on 2/14/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import Foundation

class QuestionGenerator {
    
    static func getQuizQuestion() -> [Question] {
        
        var questions = [Question]()
        
        questions.append(Question.init(text: "Қоғамда алғашқы ірі еңбек бөлінісін туғызған жағдай", variantA: "терімшіліктің дамуы", variantB: "аңшылықтың тууы", variantC: "тобырдың қалыптасуы", variantD: "темірді пайдалану", variantE: "шаруашылықтың егіншілік пен мал шаруашылығы болып бөлінуі.", answer: .E))
        
        questions.append(Question.init(text: "Адамзат тарихы дамуының ең алғашқы кезеңі", variantA: "Қола дәуірі", variantB: "Темір дәуірі", variantC: "Рулық тайпалық кезең", variantD: "Андронов кезеңі", variantE: "Тас дәуірі", answer: .E))
        
        
        
        questions.append(Question.init(text: "Адамзат тарихы дамуының ең алғашқы кезеңі", variantA: "Қола дәуірі", variantB: "Темір дәуірі", variantC: "Рулық тайпалық кезең", variantD: "Андронов кезеңі", variantE: "Тас дәуірі", answer: .E))
        
        
        return questions
    }
    
}
