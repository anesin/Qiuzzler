//
//  ViewController.swift
//  Qiuzzler
//
//  Created by anesin on 1/4/25.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let quiz = [
        ["Four + Two is equal to Six.", "True"],
        ["Five - Three is greater than zero.", "True"],
        ["Three + Eight is less than Ten.", "False"]
    ]
    var questionIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let answer = sender.currentTitle
        let correct = quiz[questionIndex][1]
        if answer == correct {
            print("Correct")
        }
        else {
            print("Wrong")
        }
        
        questionIndex += 1
        if quiz.count <= questionIndex {
            questionIndex = 0
        }
        updateUI()
    }
    
    
    func updateUI() {
        questionLabel.text = quiz[questionIndex][0]
    }
    
}
