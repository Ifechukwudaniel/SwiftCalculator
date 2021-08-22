//
//  Calculator.swift
//  Calculator Layout iOS13
//
//  Created by ifechukwu daniel; on 22/08/2021.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation


class  Calculator {
    
    let zero = "0"
    public var curenntValue:String! = "0"
    public var value:String! = nil
    public var previousValue:String! = "0"
    private var operand:Operations! = nil
    public var isFloat:Bool = false
    
    
    
    public func onNumberPressed(_ number :Int) {
        if curenntValue != zero &&  curenntValue != nil{
            curenntValue.append("\(number)")
            return
        }
        curenntValue = "\(number)"
        return
    }
    
    public func onDotPressed() {
        if(!curenntValue.contains(".")){
            curenntValue.append(".")
            isFloat = true
            return
        }
        isFloat = false
        return
    }
    
    public  func  clearValue() {
        curenntValue = zero
        isFloat = false
        return
    }
    
    public func setOperation(_ opertaion:Operations){
        operand = opertaion
        previousValue  = curenntValue
        curenntValue="0"
        return
    }
    
    public func caculate()->String {return isFloat ? caculateFloat() : caculateInt()}
    
    public func caculateInt()->String {
        var answer:String?
        switch operand {
        case .addition:
            answer =  "\( previousValue.toInteger() + curenntValue.toInteger())"
        case .subtraction:
            answer =  "\(previousValue.toInteger() - curenntValue.toInteger())"
        case .division:
            answer =  "\(previousValue.toInteger() / curenntValue.toInteger())"
        case .multiplication:
            answer = "\( previousValue.toInteger() * curenntValue.toInteger())"
        case .modulo:
            answer =  "\( previousValue.toInteger() % curenntValue.toInteger())"
        case .plusOrMinus:
            answer = "\(abs(previousValue.toInteger()))"
        default:
            answer =  "\(0)"
        }
     
     previousValue = nil
     curenntValue = answer
     return answer!
    }
    
    
    
    public func caculateFloat()->String {
        var answer:String?
        switch operand {
        case .addition:
            answer =  "\( previousValue.toFloat() + curenntValue.toFloat())"
        case .subtraction:
            answer =  "\(previousValue.toFloat() - curenntValue.toFloat())"
        case .division:
            answer =  "\(previousValue.toFloat() / curenntValue.toFloat())"
        case .multiplication:
            answer = "\( previousValue.toFloat()  * curenntValue.toFloat() )"
        case .modulo:
            answer =  "\( previousValue.toFloat() / 100)"
        case .plusOrMinus:
            answer =  "\(abs(previousValue.toFloat()))"
        default:
            answer =  "\(0)"
        }
     
     previousValue = "0"
     curenntValue = answer
     return answer!
    }
}
