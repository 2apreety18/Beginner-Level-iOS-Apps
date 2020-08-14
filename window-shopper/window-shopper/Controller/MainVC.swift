//
//  ViewController.swift
//  window-shopper
//
//  Created by preety on 13/8/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var wageTxt: CurrencyTextField!
    @IBOutlet weak var priceTxt: CurrencyTextField!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //creating calculate button
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.8666124683, green: 0.5027446293, blue: 0.01115010972, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)// alwyas use setTitle for button title
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        //inputAccessoryView for custom view on top of Calc
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func calculate(){
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text { // if fields are not nil or empty
            if let wage = Double(wageTxt), let price = Double(priceTxt){//making sure inputs are double
                view.endEditing(true) // dismissing the calc
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                //showing input to the place holde
                resultLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                
            }
        }
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        //HIDING LABELS
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = "" //default placeholder text will be shown
        priceTxt.text = ""
    }
}

