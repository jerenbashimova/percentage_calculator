//
//  ViewController.swift
//  percentage_calculator
//
//  Created by j.bashimova on 24.07.2023.
//

import UIKit

class CalculateViewController: UIViewController {
    
    
    @IBOutlet weak var percent: UITextField!
    @IBOutlet weak var value: UITextField!
    
    var percentValue=0.0
    var mainValue=0.0
    var final="0.0"

    @IBAction func calculate(_ sender: UIButton) {
        let p=percent.text!
        let v=value.text!
        if p != "" || v != ""{
            percentValue=Double(p)!
            mainValue=Double(v)!
            let dividedValue = percentValue/100
            let res=dividedValue*mainValue
            final=String(format: "%.2f", res)
           
            
        }
        self.performSegue(withIdentifier: "goToResult", sender: self)
        percent.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
           
       
           if segue.identifier == "goToResult" {
               
              
               let destinationVC = segue.destination as! ResultViewController
               
            
               destinationVC.result = final
              
             
           }
       }
}

