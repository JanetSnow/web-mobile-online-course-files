//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    let eggTimer = ["Soft":1,"Medium":2,"Hard":3]
    var secondsPassed = 0
    var totalTime = 0
    var timer = Timer()
    var player: AVAudioPlayer!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate() //可以stop前面运行的timer
        progressBar.progress = 0.0
        secondsPassed = 0
        let hardness = sender.currentTitle
        myLabel.text = hardness
    
        totalTime = eggTimer[hardness!]! * 60
        
//        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
//                if self.secondsRemaining > 0 {
//                    print ("\(self.secondsRemaining) seconds")
//                    self.secondsRemaining -= 1
//                } else {
//                    Timer.invalidate()
//                }
//            }
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
    }

       @objc func updateCounter() {
        
           if secondsPassed < totalTime {
            secondsPassed += 1
            print("\(self.secondsPassed) seconds")
            let percentageProgress = Float(secondsPassed)/Float(totalTime)
            progressBar.progress = percentageProgress
            print(percentageProgress)
            
           } else {
            self.myLabel.text = "DONE!"
                        
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
                    
           }
       }
    

//在这里，在创建新的Timer之前，并没有停止前一个Timer的使用，所以每按一次按钮，就会多创建一个Timer，并且创建多少次会反映在每秒倒计时的速度相应变快。所以要想办法解决这个问题
}
