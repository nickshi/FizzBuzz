//
//  Brain.swift
//  FizzBuzz
//
//  Created by nick.shi on 7/5/18.
//  Copyright © 2018 nick.shi. All rights reserved.
//



class Brain {
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByThreeAndFive(number: Int) -> Bool {
        return isDivisibleBy(divisor: 15, number: number)
    }
    
    
    func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func check(number: Int) -> Move {
        if isDivisibleByThreeAndFive(number: number) {
            return .fizzbuzz
        } else if isDivisibleByFive(number: number) {
            return .buzz
        } else if isDivisibleByThree(number: number) {
            return .fizz
        }
        return .number
    }
}
