//
//  ViewController.swift
//  app-swoosh
//
//  Created by preety on 6/8/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    
    @IBOutlet weak var swoosh: UIImageView!
    @IBOutlet weak var bgImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    //go back button from segue
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboardSegue){
    }


}

