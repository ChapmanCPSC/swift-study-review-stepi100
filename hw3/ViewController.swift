//
//  ViewController.swift
//  hw3
//
//  Created by Andrew Stepien on 3/28/16.
//  Copyright © 2016 Andrew Stepien. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var t = NSTimer()
    var counter = 0
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var button1: UIButton!
    var array1 = ["Let v.s. Var",
        "Computed Initializers",
         "Computed Variables",
         "Setter Observers",
         "Functions",
         "External Parameters",
         "Default Parameters",
         "Anonymous Functions",
         "Optional Chaining",
         "Failable Initializers",
        "Casting",
        "Class Methods",
        "Extensions",
        "Enumeration",
        "Error Handling",
        "Dictionaries",
        "Conditional Binding",
        "Protocols",
        "Inheritance",
        "Structs",
        "Enums",
        "Classes",
        "Subscripts",
        "Setter Observers"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label2.text=String(counter)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Next(sender: AnyObject) {
        let count = arc4random_uniform(25)
        label1.text=array1[Int(count)]
        reset()
        t = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: "count", userInfo: nil, repeats: true)
        
    }

    func count(){
        counter += 1
        if counter>30{
            reset()
        }
        label2.text=String(counter)
    }
    func reset(){
        t.invalidate()
        counter=0
        updatetext()
        
    }
    func updatetext(){
        let text = String(counter)
        label2.text=text
    
    }
    

}

