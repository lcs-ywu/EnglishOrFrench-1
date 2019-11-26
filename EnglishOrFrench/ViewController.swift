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
    
    @IBOutlet weak var messageInput: UITextView!
    
    @IBOutlet weak var outputLabel: UILabel!
    
    //MARK: Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func analyzeButton(_ sender: Any) {
        
        guard let phraseInput = messageInput.text, !phraseInput.isEmpty else {
            outputLabel.text = "Enter a Message"
            return
        }
        
        if phraseInput.count == 0 {
            outputLabel.text = "Please enter a message"
            return
        }
        
        
        
    }
    
}
