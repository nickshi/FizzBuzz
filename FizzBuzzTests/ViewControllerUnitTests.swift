//
//  ViewControllerUnitTests.swift
//  FizzBuzzTests
//
//  Created by nick.shi on 7/5/18.
//  Copyright © 2018 nick.shi. All rights reserved.
//

import XCTest

@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        let storyboard: UIStoryboard = UIStoryboard.init(name: "Main", bundle: Bundle.main)
        
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        XCTAssertTrue(true)
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move: .number)
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testMove2IncrementsScore() {
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
}
