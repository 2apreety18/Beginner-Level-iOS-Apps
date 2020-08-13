//
//  BorderButton.swift
//  app-swoosh
//
//  Created by preety on 6/8/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
