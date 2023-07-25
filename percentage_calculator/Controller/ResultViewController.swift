//
//  ResultViewController.swift
//  percentage_calculator
//
//  Created by j.bashimova on 24.07.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
   
    var result = "0.0"

    @IBOutlet weak var total: UILabel!
    
    @IBAction func Recalculate(_ sender: UIButton) {
        
       
        self.dismiss(animated: true,completion: nil)
    }
   

    override func viewDidLoad() {
        super.viewDidLoad()
        
        total.text = result
       
    }


}
