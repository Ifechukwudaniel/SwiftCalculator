//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    var calculator:Calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        answerLabel.text =   calculator.zero
    }

    //Number Pressed 0,1,2,3,4,5,6,7,8,9
    @IBAction func OnZeroPressed(_ sender: Any) {
        calculator.onNumberPressed(0)
        setValue(calculator.curenntValue)
    }
    
    @IBAction func onOnePressed(_ sender: Any) {
        calculator.onNumberPressed(1)
        setValue(calculator.curenntValue)
    }
    
    @IBAction func onTwoPressed(_ sender: Any) {
        calculator.onNumberPressed(2)
        setValue(calculator.curenntValue)
    }
    
    @IBAction func onThreePressed(_ sender: Any) {
        calculator.onNumberPressed(3)
        setValue(calculator.curenntValue)
    }
    
    @IBAction func onFourPressed(_ sender: Any) {
        calculator.onNumberPressed(4)
        setValue(calculator.curenntValue)
    }
    
    @IBAction func onFivePressed(_ sender: Any) {
        calculator.onNumberPressed(5)
        setValue(calculator.curenntValue)
    }
    
    @IBAction func onSixPressed(_ sender: Any) {
        calculator.onNumberPressed(6)
        setValue(calculator.curenntValue)
    }
    
   
    @IBAction func onSevenPressed(_ sender: Any) {
        calculator.onNumberPressed(7)
        setValue(calculator.curenntValue)
    }
    
    @IBAction func onEightPressed(_ sender: Any) {
        calculator.onNumberPressed(8)
        setValue(calculator.curenntValue)
    }
    
    @IBAction func onNinePressed(_ sender: Any) {
        calculator.onNumberPressed(9)
        setValue(calculator.curenntValue)
    }
    
    
    // Symbols and clear buttons
    @IBAction func onClearPressed(_ sender: Any) {
        calculator.clearValue()
        setValue(calculator.curenntValue)
    }
    
    @IBAction func onModulePressed(_ sender: Any) {
        return calculator.setOperation(.modulo)
    }
    
    @IBAction func onDivisionPressed(_ sender: Any) { return calculator.setOperation(.division) }
    
    @IBAction func onMutiplyPressed(_ sender: Any) { return  calculator.setOperation(.multiplication) }
    
    @IBAction func onMinusPressed(_ sender: Any) { return  calculator.setOperation(.subtraction) }
    
    @IBAction func onPlusPressed(_ sender: Any) { return calculator.setOperation(.addition)}
    
    @IBAction func onDotPressed(_ sender: Any) {
        calculator.onDotPressed()
        return  setValue(calculator.curenntValue) 
    }
    
    @IBAction func onEqualPressed(_ sender: Any) {
        answerLabel.text =   calculator.caculate()
    }
    
    func setValue(_ value:String)  {
        answerLabel.text = value
    }
}

