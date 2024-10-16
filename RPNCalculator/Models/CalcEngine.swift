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
        if temporaryInput == "No operands" {
            temporaryInput.removeAll()
        }
        temporaryInput.append(number)
    }
    
    func save() {
        if temporaryInput.isEmpty || temporaryInput == "No operands" {
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
        
    }
    
    func multiply() {
        
    }
    
    func subtract() {
        
    }
    
    func divide() {
        
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