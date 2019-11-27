//
//  RockPaperScissorsViewController.swift
//  RockPaperScissors
//
//  Created by Kenneth Alvarez on 8/20/19.
//  Copyright © 2019 Kenneth Alvarez. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    @IBOutlet weak var computersChoiceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var handGestures: [UIButton]!
    let handGame = Game()
    var scoreCounter = 0
    
    @IBAction func handGestureSelected(_ sender: UIButton) {
        let choice = sender.currentTitle!
        
        let result = handGame.run(choice) // Result is a tuple(win/loss, computer's choice)
        updateLabels(gameResults: result.0, opponentsChoice: result.1)
        //print("Button pressed is \(sender.currentTitle!)")
    }
    
    func updateLabels(gameResults:String, opponentsChoice: String) {
        if (gameResults == "Win") {
            computersChoiceLabel.text = "Computer picks \(opponentsChoice)"
            resultLabel.text = "You win!"
            scoreCounter += 1
            scoreLabel.text = "Score: \(scoreCounter)"
        }
        else if (gameResults == "Loss") {
            computersChoiceLabel.text = "Computer picks \(opponentsChoice)"
            resultLabel.text = "You Lose!"
            scoreCounter -= 1
            scoreLabel.text = "Score: \(scoreCounter)"
        }
        else {
            computersChoiceLabel.text = "Computer picks \(opponentsChoice)"
            resultLabel.text = "Try Again!"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
