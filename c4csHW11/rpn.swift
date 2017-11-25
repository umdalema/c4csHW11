//
//  rpn.swift
//  c4csHW11
//
//  Created by Dale Mallette on 11/24/17.
//  Copyright © 2017 Dale Mallette. All rights reserved.
//

import Foundation

let operators = {
  //  '+' : (Double, Double) -> Double = +
}

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
            let arg2 = stack.popLast()!
            let arg1 = stack.popLast()!
            
            stack.append(arg1 + arg2)
        }
    }
    return stack.popLast()!
}
