//
//  main.swift
//  testCalc
//
//  Created by Dale Mallette on 11/24/17.
//  Copyright © 2017 Dale Mallette. All rights reserved.
//

import Foundation

print("Starting tests")
// addition
assert(calc(arg: "2 2 +") == 4, "2 2 + returned a value other than 4")
assert(calc(arg: "2 2 + 5 +") == 9, "2 2 + 5 + returned a value other than 9")
// subtraction
assert(calc(arg: "10 5 -") == 5, "10 5 - returned a value other than 5")
assert(calc(arg: "15 5 - 5 -") == 5, "10 5 - 5 - returned a value other than 5")
// multiplication
assert(calc(arg: "4 4 *") == 16, "4 4 * returned a value other than 16")
assert(calc(arg: "5 2 * 2.2 *") == 22, "5 2 * 2.2 * returned a value other than 22")

// division
print("ALL TESTS PASSED!")
