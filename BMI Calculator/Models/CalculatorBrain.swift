//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Deepak Singh on 26/05/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit


struct CalculatorBrain {
    var bmi: BMI?
    mutating func calculateBMI(height:Float, weight:Float){
        
       let bmiValue = weight / (height*height)
      
        
        
        if bmiValue < 18.5{
            bmi = BMI(value: bmiValue, advice: "Eat More", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
      
            
        }
        else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Perfect!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
           
        }
        else{
            bmi = BMI(value: bmiValue, advice: "Eat Less", color: #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
           
        }
        
      
   }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No Advice"
        
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
    }
    
    
    
    func getBMIValue() ->String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    
    
}
