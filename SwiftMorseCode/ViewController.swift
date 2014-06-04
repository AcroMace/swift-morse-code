//
//  ViewController.swift
//  SwiftMorseCode
//
//  Created by Andy Cho on 2014-06-03.
//  Copyright (c) 2014 Andy Cho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let alphaNumToMorse = [
        "A": ".-",
        "B": "-...",
        "C": "-.-.",
        "D": "-..",
        "E": ".",
        "F": "..-.",
        "G": "--.",
        "H": "....",
        "I": "..",
        "J": ".---",
        "K": "-.-",
        "L": ".-..",
        "M": "--",
        "N": "-.",
        "O": "---",
        "P": ".--.",
        "Q": "--.-",
        "R": ".-.",
        "S": "...",
        "T": "-",
        "U": "..-",
        "V": "...-",
        "W": ".--",
        "X": "-..-",
        "Y": "-.--",
        "Z": "--..",
        "1": ".----",
        "2": "..---",
        "3": "...--",
        "4": "....-",
        "5": ".....",
        "6": "-....",
        "7": "--...",
        "8": "---..",
        "9": "----.",
        "0": "-----",
    ]
    
    func convertLetterToMorse(input: Character) -> String {
        var returnChar = alphaNumToMorse[String(input)]
        if returnChar == nil {
            returnChar = ""
        }
        return returnChar!
    }
    
    func convertStringToMorse(input: String) -> String {
        let stringToConvert = input.uppercaseString
        var returnString = ""
        for char in stringToConvert {
            let returnChar = convertLetterToMorse(char)
            if returnChar != "" {
                returnString += returnChar + " "
            }
        }
        return returnString
    }
    
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

