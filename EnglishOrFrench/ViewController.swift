//
//  ViewController.swift
//  EnglishOrFrench
//
//  Created by Doggett, Scott on 2019-11-26.
//  Copyright © 2019 Doggett, Scott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //MARK: Properties
    
    // Lables
    @IBOutlet weak var messageInput: UITextView!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    
    
    //MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Function runs when button is pressed
    @IBAction func analyzeButton(_ sender: Any) {
        
        // Resets variables everytime the function runs
        var sCount = 0
        var tCount = 0
        
        // Unwarp user input and turn into string
        guard let phraseInput = messageInput.text, !phraseInput.isEmpty else {
            outputLabel.text = "Please Enter text to analyze."
            return
        }
        
        // Make sure there is a message
        if phraseInput.count == 0 {
            outputLabel.text = "Please enter a message"
            return
        }
        
        for singleCharacter in phraseInput{
            
            switch singleCharacter {
            case "s","S":
                sCount += 1
            case "t","T":
                tCount += 1
            default:
                outputLabel.text = "Not sure"
            }
        }
        
        if sCount == tCount || sCount >= tCount {
            outputLabel.text = "This looks like French"
        } else if sCount <= tCount{
            outputLabel.text = "This looks like English"
        }
    }
}
