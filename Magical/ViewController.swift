//
//  ViewController.swift
//  MagicalHat
//
//  Created by THUC NHI on 6/19/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
	var answer = "ELEPHANT" // this is our answer
	var lettersArray = [String]()
	var score: Int = 0
	
    @IBOutlet weak var scoreBoard: UILabel!
   

    @IBOutlet weak var wordBoard: UILabel!
    
    @IBOutlet weak var announcementBoard: UILabel!
	
	// this will be called automatically when the program starts
	override func viewDidLoad() {
		super.viewDidLoad()
		let charactersInAnswer = Array(answer.characters)
		// convert each char to string for comparison
		for ch in charactersInAnswer {
			lettersArray.append(String(ch))
		}
		// now letterArray is ["E", "L", "E", "P", "H", "A", "N", "T"]
		
		// now display the same number of pandas as the number of chars
		// in the answer
		for i in 1...lettersArray.count {
			wordBoard.text = wordBoard.text! + "🐼"
		}
	}
	
    
    @IBAction func alphabetButton(sender: UIButton) {
		// this is how you iterate through an array
		for ch in lettersArray {
			// TODO. compare each char in the answer array with the button's title
			// if there's a match, update the score and the display
		}
    }
	
	
    @IBAction func quitButton(sender: UIButton) {
        wordBoard.text = answer
        announcementBoard.text = "Your score is " + "\(score)" + " ." + "Good luck next time!!!"
        
    }
	
	
}
