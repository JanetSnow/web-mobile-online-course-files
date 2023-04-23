//
//  Calculator.swift
//  BMI Calculator
//
//  Created by yaowenjing16 on 2021/10/18.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float, advice: String, color: UIColor){
        self.value = value
        self.advice = advice
        self.color = color
    }
}
