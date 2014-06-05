//
//  ViewController.swift
//  SwiftMorseCode
//
//  Created by Andy Cho on 2014-06-03.
//  Copyright (c) 2014 Andy Cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var inputTextField : UITextField
    @IBOutlet var outputTextView : UITextView
    
    @IBAction func didPressConvert(sender: AnyObject) {
        let textFieldText = self.inputTextField.text
        if textFieldText != nil {
//            println("The input was \(textFieldText)")
            var outputText = convertStringToMorse(textFieldText)
            self.outputTextView.text = outputText
        }
    }
    
    @IBAction func didPressCopyToClipboard(sender: AnyObject) {
        var pasteboard = UIPasteboard.generalPasteboard()
        pasteboard.string = self.outputTextView.text
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

