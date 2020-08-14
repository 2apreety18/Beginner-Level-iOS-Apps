//
//  Wage.swift
//  window-shopper
//
//  Created by preety on 14/8/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import Foundation
class Wage{
    class func getHours(forWage wage: Double, andPrice price:Double) -> Int {
        return Int(ceil(price / wage))
    }
}
