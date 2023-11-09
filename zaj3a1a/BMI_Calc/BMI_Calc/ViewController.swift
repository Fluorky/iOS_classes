//
//  ViewController.swift
//  BMI_Calc
//
//  Created by MACIEJ on 09/11/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var BMI_info: UILabel!
    @IBOutlet weak var human_height: UITextField!
    
    @IBOutlet weak var BMI_text: UILabel!
    @IBOutlet weak var human_weight: UITextField!
    @IBAction func Calculate(_ sender: Any) {
        var heigth = Float(human_height.text ?? "0");
        let mass = Float(human_weight.text ?? "1");
        heigth=heigth!/100.0;
        var bmi = (mass!/(heigth!*heigth!))*100;
        bmi = bmi.rounded();
        bmi = bmi/100;
        BMI_text.text = "Twoje bmi to " + String(bmi);
        if (bmi < 16.0)
        {
            BMI_info.text = "Underweight  (Severe thinness)";
        }
        else if (bmi > 16.0 && bmi < 16.9){
            BMI_info.text = " Underweight (Moderate thinness)";
        }
        else if (bmi > 17.0 && bmi < 18.4)
        {
            BMI_info.text = " Underweight (Mild thinness)";
        }
     
        else if (bmi > 18.5 && bmi < 24.9)
        {
            BMI_info.text = "You are gigachad ";
        }
        else if (bmi > 25.0 && bmi < 29.9)
        {
            BMI_info.text = "Overweight (Pre-obese)";
        }
        else if (bmi >  30.0 && bmi <  34.9)
        {
            BMI_info.text = " Obese (Class I)";
        }else if (bmi > 35.0  && bmi < 39.9)
        {
            BMI_info.text = "bese (Class II)";
        }else if (bmi > 40.0)
        {
            BMI_info.text = " Obese (Class III)";
        }
        else
        {
            BMI_info.text = "You are alien";
        }
    }
    
}

