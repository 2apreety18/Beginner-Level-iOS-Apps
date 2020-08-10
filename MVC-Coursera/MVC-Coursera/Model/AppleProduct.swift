//
//  AppleProduct.swift
//  MVC-Coursera
//
//  Created by preety on 10/8/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import Foundation

class AppleProduct{
    //can publicly get the value but cannot set it(private)
    public private(set) var name: String
    public private(set) var color: String
    public private(set) var price: Double
    
    //creating constructor
    init(name: String, color: String, price: Double) {
        self.name = name
        self.color = color
        self.price = price
    }
}
