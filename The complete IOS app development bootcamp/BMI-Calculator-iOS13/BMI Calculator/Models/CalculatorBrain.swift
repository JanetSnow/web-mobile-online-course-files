//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by yaowenjing16 on 2021/10/18.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

struct CalculateBrain {

    var bmi: BMI?
    
    mutating func calculateBMI(height:Float,weight:Float){
        let calculatedValue = weight / pow(height, 2)
        if calculatedValue < 18.5 {
            bmi = BMI(value: calculatedValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
//            here, we can use color: UIcolor.blue; or color: colorLiteral, 之后双击可以直接选颜色
        } else if calculatedValue < 24.9 {
            bmi = BMI(value: calculatedValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: calculatedValue, advice: "Eat fewer pies!", color: #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
        }
        
    }
    
    func getBMIValue()->String{
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    
    func getAdvice()->String{
        return bmi?.advice ?? "no advice"
    }
    
    func getColor()-> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }

}
