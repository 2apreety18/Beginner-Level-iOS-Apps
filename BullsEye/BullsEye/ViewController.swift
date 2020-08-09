//
//  ViewController.swift
//  BullsEye
//
//  Created by preety on 2/8/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 50
    var targetvalue = 0
    var score = 0
    var round = 1

    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetlabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = Int(slider.value.rounded())
        backToTheStart()
        
        //custom slider design code
        let thumbImageNormal = UIImage(named: "SliderThumb-Normal")!
        slider.setThumbImage(thumbImageNormal, for: .normal)
        
        let thumbImageHighlighted = UIImage(named: "SliderThumb-Highlighted")!
        slider.setThumbImage(thumbImageHighlighted, for: .highlighted)
        
        let insets = UIEdgeInsets(top: 0,left: 14, bottom : 0, right: 14)
        
        let tracLeftImage = UIImage(named: "SliderTrackLeft")!
        let trackLeftResizeable = tracLeftImage.resizableImage(withCapInsets: insets)
        slider.setMinimumTrackImage(tracLeftImage, for: .normal)
        
        let tracRightImage = UIImage(named: "SliderTrackRight")!
        let trackRightResizeable = tracRightImage.resizableImage(withCapInsets: insets)
        slider.setMaximumTrackImage(tracRightImage, for: .normal)
        
    }
    

    @IBAction func showAlert(){
        
        let diff = abs(currentValue - targetvalue)
        var points = 100 - diff
        
        let title: String
        if diff == 0{
            title = "perfect"
            points += 100
        }else if diff < 5{
            if diff == 1 {points += 50}
            title = "You almost had it!"
        }else if diff < 10{
            title = "Pretty good"
        }else{
            title = "Not even close..."
        }
        
        score += points
        
        let message = "Your score is now: \(points)"
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default, handler: {
            action in
            self.startNewRound()
        })
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    func startNewRound(){
        round += 1
        targetvalue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabel()
    }
    func updateLabel() {
        //putting the random value of targetValue to the label on screen
        targetlabel.text = String(targetvalue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
        
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
         currentValue = Int(slider.value.rounded())
    }
    
    @IBAction func backToTheStart() {
         round = 0
         score = 0
         startNewRound()
    }
}

