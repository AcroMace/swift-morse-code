//
//  ViewController.swift
//  SwiftMorseCode
//
//  Created by Andy Cho on 2014-06-03.
//  Copyright (c) 2014 Andy Cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBAction func didEditText(sender: AnyObject) {
        println("Changed the text in the textbox")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

