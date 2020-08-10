//
//  ViewController.swift
//  MVC-Coursera
//
//  Created by preety on 10/8/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

@IBOutlet weak var iphoneNameLabel: UILabel!
@IBOutlet weak var iphoneColorLabel: UILabel!
@IBOutlet weak var iphonePriceLabel: UILabel!

   
   
   override func viewDidLoad() {
       super.viewDidLoad()
       let appleProduct = AppleProduct(name: "iPhone X", color: "Space Gray", price: 999.99)
       // appleProduct.name = "Samsung S8" Model can be accessed if it is not private
    
       //passing object input to the view
       iphoneNameLabel.text = appleProduct.name
       iphoneColorLabel.text = "in \(appleProduct.color)"
       iphonePriceLabel.text = "$\(appleProduct.price)"
   }



}

