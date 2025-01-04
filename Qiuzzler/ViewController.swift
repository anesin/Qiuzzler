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
        "Four + Two is equal to Six.",
        "Four - Three is greater than zero.",
        "Three + Eight is less than Ten."
    ]
    var questionIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        questionIndex += 1
        if quiz.count <= questionIndex {
            questionIndex = 0
        }
        updateUI()
    }
    
    
    func updateUI() {
        questionLabel.text = quiz[questionIndex]
    }
    
}
