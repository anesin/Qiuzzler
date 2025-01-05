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
    
    var quizBrain = QuizBrain()
    
    var timer: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let answer = sender.currentTitle!
        if quizBrain.checkAnswer(answer) {
            sender.backgroundColor = .green
        }
        else {
            sender.backgroundColor = .red
        }

        quizBrain.next()
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self,
                                     selector: #selector(updateUI),
                                     userInfo: nil, repeats: false)
    }
    
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        trueButton.backgroundColor = .clear
        falseButton.backgroundColor = .clear
        progressBar.progress = quizBrain.progress()
    }
    
}
