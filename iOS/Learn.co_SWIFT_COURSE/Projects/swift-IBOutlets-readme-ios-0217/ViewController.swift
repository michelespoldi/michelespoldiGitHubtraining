//
//  ViewController.swift
//  IBOutletFun
//
//  Created by Jim Campagno on 9/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textDisplay: UILabel!
    
    @IBAction func helloWorld(_ sender: Any) {
        textDisplay.text = "Hello, world!"
        print("Pressed Hello World button")
    }
    
    @IBAction func goodbyeWorld(_ sender: Any) {
        textDisplay.text = "Goodbye, world!"
        print("Pressed Goodbye World button")
    }
    
    @IBAction func unicorn(_ sender: Any) {
        textDisplay.text = "Unicorn!"
        print("Pressed Unicorn button")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //we can manipulate the pre-defined labels, changing their text on the fly
        textDisplay.text = "Zzz..." //now the label does no longer display "Label" text, but "Zzz..." instead
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

   

}
