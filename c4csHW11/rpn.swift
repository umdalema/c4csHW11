//
//  rpn.swift
//  c4csHW11
//
//  Created by Dale Mallette on 11/24/17.
//  Copyright © 2017 Dale Mallette. All rights reserved.
//

import Foundation

// swift doesn't have an operators module like python does, so we're writing
// closures in place of the operators.
let operators = [
    "+" : {(a:Double, b:Double) -> Double in return a + b},
    "-" : {(a:Double, b:Double) -> Double in return a - b},
    "*" : {(a:Double, b:Double) -> Double in return a * b},
    "/" : {(a:Double, b:Double) -> Double in return a / b},
]

func calc(arg:String) -> Double
{
    var stack : [Double] = []
    
    let tokens = arg.components(separatedBy: " ")
    
    
    for token in tokens
    {
        if let tokenValue = Double(token)
        {
            stack.append(tokenValue)
        }
        else // the token is the operator value
        {
            let op = operators[token]!
            let arg2 = stack.popLast()!
            let arg1 = stack.popLast()!

            stack.append(op(arg1, arg2))
        }
    }
    return stack.popLast()!
}
