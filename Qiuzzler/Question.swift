//
//  Question.swift
//  Qiuzzler
//
//  Created by anesin on 1/4/25.
//

import Foundation


struct Question {
    
    let text: String
    let answer: String
    
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
    
}
