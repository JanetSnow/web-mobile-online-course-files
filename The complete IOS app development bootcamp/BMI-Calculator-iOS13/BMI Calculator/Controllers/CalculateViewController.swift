//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController{
    
//    var bmiValue = "0.0"
    var calculateBrain = CalculateBrain()
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        
//        heightLabel.text = String(format: "%.2fm", sender.value)
//        这里我直接写了m,但还可以使用 string interpolation
        let height = String(format: "%.2f", sender.value)
        heightLabel.text = "\(height)m"
//       在这里，2f意思是两位小数，相应的，0f就是没有小数，3f就是一位小数，以此类推就好
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        
//        print(String(format: "%.0f",sender.value))
//        weightLabel.text = String(Int(sender.value))
//        weightLabel.text = String(format: "%.0fkg", sender.value)
        let weight = String(format: "%.0f", sender.value)
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
//       实现开平方的两种方法： let BMI = weight / (height * height)
//        let BMI = weight / pow(height, 2)
//        bmiValue = String(format: "%.1f", BMI)
        calculateBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
//    it's the navigation that will run in preparation for the segue.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculateBrain.getBMIValue()
            destinationVC.advice = calculateBrain.getAdvice()
            destinationVC.color = calculateBrain.getColor()
            
//            destinationVC.bmiValue = bmiValue
//        segue.destination directs to the view controller that will be initialized when the segue gets triggered
//            by using the word "as", we are performing sth called downcasting. we can cast the UIViewController down to a ResultViewController;
//            the ! here says it's a forced downcast
        }
    }

}
