//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5,"Medium":7,"Hard":12]
    var timer = Timer()
    var timerValue:Int = 0
    @IBOutlet var titleLabel: UILabel!
    
    
    
    @IBAction func hardnessSelection(_ sender: UIButton) {
        
        timer.invalidate()// reset the timer each time the button is pressed
        
        let hardness = sender.currentTitle! // <- wrapp current value set as optionnal
        
        print(sender.currentTitle!) // Soft, Medium, Hard
        
        
        timerValue = eggTimes[hardness]!
        print(timerValue)// unwrapped the value to get a Int rather than optionnal Int
        
        
        
        timer = Timer.scheduledTimer(timeInterval: 1.0,target:self,selector: #selector(countDown), userInfo: true, repeats: true)
    }
    
    @objc func countDown(){
        if timerValue > 0{
            print("\(timerValue) seconds.")
            timerValue -= 1
            
        }else{
            timer.invalidate()
            titleLabel.text = "Eggs are cooked !!" // <- change the title label
            
            print("it's cooked ! ")
        }
    }
   
    
    
    
    
    
    
    
}




