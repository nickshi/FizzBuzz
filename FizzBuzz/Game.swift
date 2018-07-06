//
//  Game.swift
//  FizzBuzz
//
//  Created by nick.shi on 7/5/18.
//  Copyright © 2018 nick.shi. All rights reserved.
//

import UIKit

class Game {
    var score: Int = 0
    let maxChance = 5
    var remainChance = 0
    
    var isGameOver: Bool {
        return remainChance == 0
    }
    
    let brain: Brain
    init() {
        brain = Brain()
        reset()
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            remainChance = max(remainChance - 1, 0)
            return (false, score)
        }
    }
    
    func reset() {
        score = 0
        remainChance = maxChance
    }
}
