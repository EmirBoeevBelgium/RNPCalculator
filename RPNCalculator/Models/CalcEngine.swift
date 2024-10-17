//
//  CalcEngine.swift
//  RPNCalculator
//
//  Created by emir.boeev on 16/10/2024.
//

import Foundation

@Observable
class CalcEngine {
    var result = ""
    var temporaryInput = ""
    var stack = [Double]()
    
    func input(number: String) {
        if temporaryInput == "No operands" || temporaryInput == "Not enough operands"  {
            temporaryInput.removeAll()
        }
        temporaryInput.append(number)
    }
    
    func save() {
        if temporaryInput.isEmpty || temporaryInput == "No operands" || temporaryInput == "Not enough operands" {
            clear()
            temporaryInput.append("No operands")
        }
        else {
            var concatResult = "\n"
            stack.append(Double(temporaryInput)!)
            concatResult.append(temporaryInput)
            concatResult.append(result)
            result.removeAll()
            result.append(concatResult)
            
            temporaryInput.removeAll()
        }
        
        
    }
    
    func sum() {
        if stack.count < 2 {
            clear()
            temporaryInput.append("Not enough operands")
        }
        else {
            var sumResult = stack[stack.count - 1] + stack[stack.count - 2]
            
            stack.popLast()
            stack.popLast()
            
            var concatResult = "\n"
            stack.append(sumResult)
            concatResult.append(String(sumResult))
            concatResult.append(result)
            result.removeAll()
            result.append(concatResult)
            
        }
        
    }
    
    func multiply() {
        if stack.count < 2 {
            clear()
            temporaryInput.append("Not enough operands")
        }
        else {
            var sumResult = stack[stack.count - 1] * stack[stack.count - 2]
            
            stack.popLast()
            stack.popLast()
            
            var concatResult = "\n"
            stack.append(sumResult)
            concatResult.append(String(sumResult))
            concatResult.append(result)
            result.removeAll()
            result.append(concatResult)
            
        }
    }
    
    func subtract() {
        if stack.count < 2 {
            clear()
            temporaryInput.append("Not enough operands")
        }
        else {
            var sumResult = abs(stack[stack.count - 1] - stack[stack.count - 2])
            
            stack.popLast()
            stack.popLast()
            
            var concatResult = "\n"
            stack.append(sumResult)
            concatResult.append(String(sumResult))
            concatResult.append(result)
            result.removeAll()
            result.append(concatResult)
            
        }
    }
    
    func divide() {
        if stack.count < 2 {
            clear()
            temporaryInput.append("Not enough operands")
        }
        else {
            var sumResult = abs(stack[stack.count - 1] / stack[stack.count - 2])
            
            stack.popLast()
            stack.popLast()
            
            var concatResult = "\n"
            stack.append(sumResult)
            concatResult.append(String(sumResult))
            concatResult.append(result)
            result.removeAll()
            result.append(concatResult)
            
        }
    }
    
    func clear() {
        temporaryInput.removeAll()
    }
    
    func showStack() {
        var concatResult = "\n"
        concatResult.append(stack.description)
        concatResult.append(result)
        result.removeAll()
        result.append(concatResult)
    }
    
    func clearStack() {
        result.removeAll()
        stack.removeAll()
    }
}
