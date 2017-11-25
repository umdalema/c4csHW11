//
//  main.swift
//  c4csHW11
//
//  Created by Dale Mallette on 11/24/17.
//  Copyright © 2017 Dale Mallette. All rights reserved.
//

import Foundation


while true
{
    // adding the terminator:"" is what keeps print from adding a newline
    print ("rpn> ", terminator:"")
    let input = readLine()!
    
    print(calc(arg: input))
}



/*
#!/usr/bin/env python3
import operator

# highligting.
from termcolor import colored

operators = {
    '+': operator.add,
    '-': operator.sub,
    '*': operator.mul,
    '/': operator.truediv,
    '^': operator.pow,
    '%': operator.mod
}

history = list()
# green for positive numbers
# red for negative numbers.
def getNumberColor(num):
if num > 0:
return 'green'
elif num < 0:
return 'red'
else:
return 'grey'

def addToHistory(arg1, arg2, token, result):
newHist = colored(arg1, getNumberColor(arg1)) + " " + token + " " + colored(arg2, getNumberColor(arg2))
newHist += " = " + colored(result, getNumberColor(result))

history.append(newHist)

def calculate(myarg):
stack = list()

for token in myarg.split():
try:
token = int(token)
stack.append(token)
except ValueError:
function = operators[token]
arg2 = stack.pop()
arg1 = stack.pop()
result = function(arg1, arg2)
addToHistory(arg1, arg2, token, result)
stack.append(result)
#print(stack)
if len(stack) != 1:
raise TypeError("Too many parameters")
return stack.pop()

def main():
while True:
inputIn = input("rpn calc> ")
if (inputIn == 'history'):
lineNum = 0
for line in history:
print(lineNum, ") ", line)
lineNum += 1
else:
result = calculate(inputIn)
print("Result: ", colored(result,getNumberColor(result)))

if __name__ == '__main__':
main()
*/
