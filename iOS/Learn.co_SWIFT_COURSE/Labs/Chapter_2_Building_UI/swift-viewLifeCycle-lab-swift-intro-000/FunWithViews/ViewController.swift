//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var square1: UIView!
    
    @IBOutlet weak var square2: UIView!
    
    @IBOutlet weak var square3: UIView!
    
    @IBOutlet weak var square4: UIView!
    
    @IBOutlet weak var square5: UIView!
    
    @IBOutlet weak var square6: UIView!
    
    @IBOutlet weak var square7: UIView!
    
    @IBOutlet weak var result1: UILabel!
    
    @IBOutlet weak var result2: UILabel!
    
    @IBOutlet weak var result3: UILabel!
    
    @IBOutlet weak var result4: UILabel!
    
    @IBOutlet weak var result5: UILabel!
    
    @IBOutlet weak var result6: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        square1.isHidden = true
        square2.isHidden = true
        square3.isHidden = true
        square4.isHidden = true
        square5.isHidden = true
        square6.isHidden = true
        square7.isHidden = true
        result1.isHidden = true
        result2.isHidden = true
        result3.isHidden = true
        result4.isHidden = true
        result5.isHidden = true
        result6.isHidden = true
    }

    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        square1.isHidden = true
        square2.isHidden = true
        square3.isHidden = true
        square4.isHidden = true
        square5.isHidden = true
        square6.isHidden = true
        square7.isHidden = true
        //generating the random number
        let x = randomDiceRoll()
        print(x) //printing the random number for dev purposes
            switch x {
            case 1 :
                square1.isHidden = false
                square2.isHidden = true
                square3.isHidden = true
                square4.isHidden = true
                square5.isHidden = true
                square6.isHidden = true
                square7.isHidden = true
          
            case 2 :
                square1.isHidden = false
                square2.isHidden = false
                square3.isHidden = true
                square4.isHidden = true
                square5.isHidden = true
                square6.isHidden = true
                square7.isHidden = true
           
            case 3 :
                square1.isHidden = false
                square2.isHidden = true
                square3.isHidden = true
                square4.isHidden = false
                square5.isHidden = true
                square6.isHidden = true
                square7.isHidden = false
            
            case 4 :
                square1.isHidden = false
                square2.isHidden = true
                square3.isHidden = false
                square4.isHidden = true
                square5.isHidden = false
                square6.isHidden = true
                square7.isHidden = false
            
            case 5 :
                square1.isHidden = false
                square2.isHidden = true
                square3.isHidden = false
                square4.isHidden = false
                square5.isHidden = false
                square6.isHidden = true
                square7.isHidden = false
            
            case 6 :
                square1.isHidden = false
                square2.isHidden = false
                square3.isHidden = false
                square4.isHidden = true
                square5.isHidden = false
                square6.isHidden = false
                square7.isHidden = false
    
            default:
                print("Critical system error, please contact support ASAP")
            }
        updateLabelWithRoll(roll: x) //executing the label function, in order to print the random number to our labels
        
    }
    
    //updating the result dices
    func updateLabelWithRoll(roll: Int) {
        
        let diceScore = String(roll)
        
        if result1.isHidden {
            result1.text = diceScore
            result1.isHidden = false
        } else if result2.isHidden {
            result2.text = diceScore
            result2.isHidden = false
        } else if result3.isHidden {
            result3.text = diceScore
            result3.isHidden = false
        } else if result4.isHidden {
            result4.text = diceScore
            result4.isHidden = false
        } else if result5.isHidden {
            result5.text = diceScore
            result5.isHidden = false
        } else if result6.isHidden {
            result6.text = diceScore
            result6.isHidden = false
        } else if result6.isHidden == false {
            result1.text = diceScore
            result1.isHidden = false
            result2.isHidden = true
            result3.isHidden = true
            result4.isHidden = true
            result5.isHidden = true
            result6.isHidden = true
        }
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }

    @IBAction func rollTheDice(_ sender: Any) {
    }
    
}
