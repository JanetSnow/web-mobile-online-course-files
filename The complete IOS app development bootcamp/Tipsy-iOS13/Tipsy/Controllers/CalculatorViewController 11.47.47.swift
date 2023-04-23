//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var tip = 0.10
    var numberOfPeople = 2
    var finalResult = "0.0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        billTextField.endEditing(true)
        
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        let buttonTitle = sender.currentTitle!
        let buttonTitleMinusPercentageSign = buttonTitle.dropLast()
        let buttonTitleAsNumber = Double(buttonTitleMinusPercentageSign)!
        tip = buttonTitleAsNumber / 100
        
        
    }
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        numberOfPeople = Int(sender.value)
         splitNumberLabel.text = String(numberOfPeople)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let inputText = billTextField.text!
        let inputNumber = Double(inputText)!
        let billPaidByEach = (inputNumber*(1+tip))/Double(numberOfPeople)
        finalResult = String(format: "%.2f", billPaidByEach)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.result = finalResult
            destinationVC.numOfPeople = numberOfPeople
            destinationVC.tip = Int(tip * 100)
            
        }
    }
    


}

