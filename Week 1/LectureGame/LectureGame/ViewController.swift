//
//  ViewController.swift
//  LectureGame
//
//  Created by Narikbi on 2/7/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!

    var numberOfTaps = 0 {
        didSet {
            countLabel.text = "Number of taps: \(numberOfTaps)"
        }
    }
    
    let emojies = ["🤟🏼", "😻", "😅", "🇰🇿"]
    
    @IBAction func didTapButton(_ sender: UIButton) {
        
        numberOfTaps += 1
        
        if sender.title(for: .normal) == "" {
            
            sender.setTitle(emojies[sender.tag], for: .normal)
            sender.backgroundColor = UIColor.red
        } else {
            sender.setTitle("", for: .normal)
            sender.backgroundColor = UIColor.white
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

