//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by yaowenjing16 on 2021/10/12.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let answer: [String]
    let bestAnswer: String
    
    init(q:String,a:[String],correctAnswer:String){
        text = q
        answer = a
        bestAnswer = correctAnswer
    }
}
