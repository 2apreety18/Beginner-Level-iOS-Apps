//
//  CurrencyTextField.swift
//  window-shopper
//
//  Created by preety on 13/8/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import UIKit

@IBDesignable //to show on Interface Builder
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.7589362158)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true //for saving previous features from draw (_ react
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current //default based on the locality of device
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    
    //to show on Interface builder
    override func prepareForInterfaceBuilder() { //must remove " Class "
        customizeView()
    }
    
    //works like viewDidLoad type
    override func awakeFromNib() { //must remove " Class "
        super.awakeFromNib()
        customizeView()
    }
        
    func customizeView(){
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2473244863)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true //for saving previous features from draw (_ react
            
        if let p = placeholder {
            
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: UIColor.white])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        
        
  }

}
