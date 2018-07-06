//
//  ViewController.swift
//  FizzBuzz
//
//  Created by nick.shi on 7/5/18.
//  Copyright © 2018 nick.shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    var game: Game!
    
    @IBOutlet weak var lblChance: UILabel!
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        game = Game()
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
        
        check()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func check() {
        playAgainButton.isHidden = !game.isGameOver
        lblChance.text = "\(game.remainChance) / \(game.maxChance)"
        numberButton.isEnabled = !game.isGameOver
        fizzzButton.isEnabled = !game.isGameOver
        buzzButton.isEnabled = !game.isGameOver
        fizzBuzzButton.isEnabled = !game.isGameOver
    }
    
    func play(move: Move) {
        let response = game.play(move: move)
        gameScore = response.score
        check()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        guard !game.isGameOver else {
            return
        }
        
        switch sender {
        case numberButton:
            play(move: .number)
        case fizzzButton:
            play(move: .fizz)
        case buzzButton:
            play(move: .buzz)
        case fizzBuzzButton:
            play(move: .fizzbuzz)
        default:
            print("Invalid selection")
        }
        
    }
    
    @IBAction func btnPlayAgain(_ sender: Any) {
        game.reset()
        check()
    }
}

