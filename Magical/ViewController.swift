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
	var displayArray = [String]()
	var score: Int = 0
    @IBOutlet weak var scoreBoard: UILabel!
    @IBOutlet weak var wordBoard: UILabel!
    @IBOutlet weak var announcementBoard: UILabel!
	
	// this will be called automatically when the program starts
	override func viewDidLoad() {
		super.viewDidLoad()
		
		let charactersInAnswer = Array(answer.characters)
		
		// set up the initial labels
		wordBoard.text = ""
		announcementBoard.text = "Start by picking a letter"
		
		// convert each char to string for comparison
		// now letterArray is ["E", "L", "E", "P", "H", "A", "N", "T"]
		for ch in charactersInAnswer {
			lettersArray.append(String(ch))
		}
		
		// now display the same number of pandas as the number of chars
		// in the answer
		for i in 1...lettersArray.count {
			displayArray.append("🐼") // everything is initially 🐼
			wordBoard.text = wordBoard.text! + displayArray[i - 1]
		}
       	}
	
    
    @IBAction func alphabetButton(sender: UIButton) {
		
		var index: Int = -1
		var occurence: Int = 0
		// this is how you iterate through an array
        
        
        
        for ch in lettersArray {
            
            if displayArray == lettersArray {
            announcementBoard.text = "Yayyyyy! Click 'NEXT' for next round!"
                
                
            }
            else {
            index = index + 1
            if sender.currentTitle == ch {
				occurence = occurence + 1
				displayArray[index] = ch
				score = score + 1
                if occurence == 1 {
                    announcementBoard.text = "There is 1 " + "\(ch)"
				}
                else {
<<<<<<< HEAD
					announcementBoard.text = "There are " + "\(occurence) \(ch)s"
=======
					announcementBoard.text = "There are " + "\(occurence)" + "\(ch)"
>>>>>>> 6cdeb3f... Fix bug for Nhi Nhi.
				}
			}
			// TODO. compare each char in the answer array with the button's title
			// if there's a match, update the score and the display
		}
		
		if occurence == 0 {
<<<<<<< HEAD
			announcementBoard.text = "There is no \(sender.currentTitle!)"
=======
			announcementBoard.text = "There is no \(sender.currentTitle)"
>>>>>>> 6cdeb3f... Fix bug for Nhi Nhi.
		}
		
		wordBoard.text = ""
		for i in 1...displayArray.count {
			wordBoard.text = wordBoard.text! + displayArray[i - 1]
<<<<<<< HEAD
            scoreBoard.text = "Score: \(score)"
		}
        }
=======
		}
>>>>>>> 6cdeb3f... Fix bug for Nhi Nhi.
    }
	
    @IBAction func quitButton(sender: UIButton) {
        wordBoard.text = answer
        announcementBoard.text = "Your score is " + "\(score)" + " ." + "Good luck next time!!!"
        
    }
	
    @IBAction func nextButton(sender: UIButton) {
        wordBoard.text = ""
       
        lettersArray = [String]()
        displayArray = [String]()
         answer = "CHRISTOPHER"
    let charactersInAnswer = Array(answer.characters)
            
    announcementBoard.text = "Start by picking a letter"
        
    for ch in charactersInAnswer {
    lettersArray.append(String(ch))
            }
    for i in 1...lettersArray.count {
        displayArray.append("🐼") // everything is initially 🐼
        wordBoard.text = wordBoard.text! + displayArray[i - 1]
            }

    }
	
}
