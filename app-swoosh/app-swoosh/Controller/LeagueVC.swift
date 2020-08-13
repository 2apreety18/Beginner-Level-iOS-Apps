//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by preety on 12/8/20.
//  Copyright © 2020 Preety. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player! //code won't run unless there's a player
    
    @IBOutlet weak var nextBtn: BorderButton! //for triguring the action of the button
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player() //initializing struct
    }
    
    //Programmatic Segue (controller to controller connection)
    //1.Drag from the NEXT button using assistant to create @IBAction
    //2.On storyborad,Drag from ControllerName(here LeagueVC) on VController bar to the skillVC screen
    //3.Give the segueName at Identifier on story board
    //4.Change the withIdentifier value to the SegueName
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLegue(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLegue(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLegue(leagueType: "coed")
    }
    
    func selectLegue(leagueType: String){ //creating func for buttons
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true //enabling manually disabled (selecting the button -->unmark enable the from rightbar) button
    }
    
    //passing data between view controllers
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
    

}
