//
//  Game.swift
//  RockPaperScissors
//
//  Created by Kenneth Alvarez on 8/20/19.
//  Copyright © 2019 Kenneth Alvarez. All rights reserved.
//

import Foundation

class Game {
    
    func run(_ choice: String) -> (String, String) {
        switch choice {
        case "Rock":
            let computerHand = computerChoice()
            return (results(userChoice: "Rock", computerChoice: computerHand), computerHand)
            
        case "Paper":
            let computerHand = computerChoice()
            return (results(userChoice: "Paper", computerChoice: computerHand), computerHand)
            
        case "Scissors":
            let computerHand = computerChoice()
            return (results(userChoice: "Scissors", computerChoice: computerHand), computerHand)
            
        default:
            return ("Error1", "Error2")
        }
    }
    
    
    func computerChoice() -> String {
        let randomInt = Int.random(in: 0...2)
        
        switch randomInt {
        case 0:
            return "Rock"
        case 1:
            return "Paper"
        case 2:
            return "Scissors"
        default:
            return "Error"
        }
    }
    
    
    func results(userChoice: String, computerChoice: String) -> String {
        if (userChoice == computerChoice) {
            return "Draw"
        }
        else if (userChoice == "Rock" && computerChoice == "Scissors") {
            return "Win"
        }
        else if (userChoice == "Paper" && computerChoice == "Rock") {
            return "Win"
        }
        else if (userChoice == "Scissors" && computerChoice == "Paper") {
            return "Win"
        }
        else if (userChoice == "Rock" && computerChoice == "Paper") {
            return "Loss"
        }
        else if (userChoice == "Paper" && computerChoice == "Scissors") {
            return "Loss"
        }
        else {
            return "Loss"
        }
    }
    
    
}
