//
//  QuizViewController.swift
//  QuizUp
//
//  Created by Narikbi on 2/14/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    
    var manager = QuizManager()
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showQuestion()
        
    }
    
    // MARK: - Actions
    
    @IBAction func aButtonTapped(_ sender: Any) {        
    }
    
    @IBAction func bButtonTapped(_ sender: Any) {
    }
    
    @IBAction func cButtonTapped(_ sender: Any) {
    }
    
    @IBAction func dButtonTapped(_ sender: Any) {
    }
    
    @IBAction func eButtonTapped(_ sender: Any) {
    }
    
    
    // MARK: -
    func showQuestion() {
        
        let question = manager.getCurrentQuestion()
        
        questionLabel.text = question.text
        
        aButton.setTitle(question.variantA, for: .normal)
        bButton.setTitle(question.variantB, for: .normal)
        cButton.setTitle(question.variantC, for: .normal)
        dButton.setTitle(question.variantD, for: .normal)
        eButton.setTitle(question.variantE, for: .normal)
    }
    


}
