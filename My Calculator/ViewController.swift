//
//  ViewController.swift
//  My Calculator
//
//  Created by Olivia Chisman on 1/29/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    var priorValue: Int = 0
    var currentValue: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        if let value = sender.currentTitle {
            if (value == "=") {
                priorValue = priorValue + (Int(currentValue) != nil ? Int(currentValue)! : 0)
                result.text = "\(priorValue)"
                priorValue = 0
                currentValue = ""
            } else if value == "+" {
                priorValue = priorValue + (Int(currentValue) != nil ? Int(currentValue)! : 0)
                currentValue = ""
                result.text = "\(value)"
            } else {
                currentValue = "\(currentValue)\(value)"
                result.text = "\(currentValue)"
            }
        }
    }
    
}

