//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by nick.shi on 7/5/18.
//  Copyright © 2018 nick.shi. All rights reserved.
//

import XCTest
@testable import FizzBuzz
class BrainTests: XCTestCase {
    let brain = Brain()
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testIsDivisibleByThree() {
        
        let result = brain.isDivisibleByThree(number:  3)
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisibleByFive() {
        
        let result = brain.isDivisibleByFive(number:  5)
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisibleByThreeAndFive() {
        
        let result = brain.isDivisibleByThreeAndFive(number:  15)
        XCTAssertEqual(result, true)
    }
    
    func testSayFizz() {
        let result = brain.check(number: 3)
        XCTAssertEqual(result, .fizz)
    }
    
    func testSayBuzz() {
        let result = brain.check(number: 5)
        XCTAssertEqual(result, .buzz)
    }
    
    func testSayFizzBuzz() {
        let result = brain.check(number: 15)
        XCTAssertEqual(result, .fizzbuzz)
    }
    
    func testSayNone() {
        let result = brain.check(number: 1)
        XCTAssertEqual(result, .number)
    }
}
