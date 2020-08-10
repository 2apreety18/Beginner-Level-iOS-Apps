//
//  CurrentView.swift
//  MVC-Coursera
//
//  Created by preety on 10/8/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import UIKit

class CurrentView: UIView {

   override func awakeFromNib() { //don't  use the one with class
          layer.cornerRadius = 20
          layer.shadowColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
          layer.shadowRadius = 10
          layer.shadowOpacity = 0.75
          backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
          layer.borderColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
          layer.borderWidth = 5
      }

}
