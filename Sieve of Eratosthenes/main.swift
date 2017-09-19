//
//  main.swift
//  exercises
//
//  Created by Andre on 9/19/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import Foundation

precedencegroup PowerPrecedence { higherThan: MultiplicationPrecedence }
infix operator ^^ : PowerPrecedence
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

func calculate (primes : [Bool] , N : Int) -> [Bool] {
    let N = N
    var primes = primes
    for i in 2...Int(sqrt(Double(N))) {
        if primes[i] == true {
            for j in 0...N {
                let calculation = (i ^^ 2) + (j * i)
                if calculation < N {
                    primes[calculation] = false
                } else {
                    break;
                }
            }
        }
    }
    return primes
}


let N = 100

var primes = [Bool](repeating: true, count: N)

primes = calculate(primes: primes, N: N)

for index in 2...N-1 {
    if primes[index] == true {
        print(index)
    }
}


















