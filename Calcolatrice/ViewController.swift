//
//  ViewController.swift
//  Calcolatrice
//
//  Created by user on 14/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstField: UITextField!
    
    @IBOutlet weak var secondField: UITextField!
    
    @IBOutlet weak var thirdField: UILabel!
    
    var num = 0
    
    @IBAction func plusButton(_ sender: UIButton) {
        num = 1
    }
    
    @IBAction func menusButton(_ sender: UIButton) {
    }
    
    
    @IBAction func multiplyButton(_ sender: UIButton) {
        num = 3
    }
    
    @IBAction func divideButton(_ sender: UIButton) {
        num = 4
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //Button calculate
    @IBAction func Calculate(_ sender: Any) {
        let val1 = Int(firstField.text!) ?? 0
        let val2 = Int(secondField.text!) ?? 0
        switch num {
        case 1: thirdField.text = String(val1+val2)
        case 2: thirdField.text = String(val1-val2)
        case 3: thirdField.text = String(val1*val2)
        case 4:
            if val2 != 0{
                thirdField.text = String(val1/val2)
            }else{
                thirdField.text = "Impossibile dividere per 0"
            }
        default: thirdField.text = "Non hai inserito un operatore valido"
        }
    }

}
