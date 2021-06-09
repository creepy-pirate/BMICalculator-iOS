//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Deepak Singh on 26/05/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue : String?
    var advice : String?
    var color : UIColor?
    
    
    
  
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var backgroundColor: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        resultLabel.text = bmiValue
        backgroundColor.backgroundColor = color
        adviceLabel.text = advice
        
        
      
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
