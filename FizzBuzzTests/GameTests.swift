//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by nick.shi on 7/5/18.
//  Copyright © 2018 nick.shi. All rights reserved.
//

import XCTest

@testable import FizzBuzz
class GameTests: XCTestCase {
    let game = Game()
    
    override func setUp() {
        super.setUp()
        
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    

    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    
    func testonPlayScoreIncremented() {
        let _ = game.play(move: .number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        let _ = game.play(move: .number)
        let _ = game.play(move: .number)
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play(move: .fizz)
        XCTAssertEqual(game.score, 1)
    }
   
}
