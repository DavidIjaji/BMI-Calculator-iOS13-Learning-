//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by David Alejandro Ijaji Guerrero on 2/04/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi:BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) -> Void {
        let bmiValue = weight / (height * height)
        if bmiValue <	18.5{
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: UIColor.blue)
        }
        else if bmiValue <= 24.9{
            bmi = BMI(value: bmiValue, advice: "Great!", color: UIColor.green)
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat less!", color: UIColor.red)
        }
    }
    
    mutating func getBMIValue() -> String {
        let bmiFormated =  String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiFormated
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.clear
    }
    
    
    
}
