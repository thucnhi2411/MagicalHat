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
    let answerArray = ["CHRISTOPHER", "CHICKEN", "YELLOW"]
    var count: Int  = -1

    @IBOutlet weak var scoreBoard: UILabel!
    @IBOutlet weak var wordBoard: UILabel!
    @IBOutlet weak var announcementBoard: UILabel!
	
	// this will be called automatically when the program starts
    
    func initView() {
        
        wordBoard.text = ""
        announcementBoard.text = "Start by picking a letter"
        
        
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

	override func viewDidLoad() {
		super.viewDidLoad()
<<<<<<< HEAD
		
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
	
=======
		initView()
		       	}
   
    
        
    @IBAction func quitPress(sender: UIButton) {
        wordBoard.text = answer
        announcementBoard.text = "Your score is \(score). Good Luck next time!"
    }
>>>>>>> bf4e753... Add some more cool answers, except for 'CHRIS' which is not cool at all !!!
    
    @IBAction func alphabetButton(sender: UIButton) {
		
		var index: Int = -1
		var occurence: Int = 0
<<<<<<< HEAD
		// this is how you iterate through an array
=======
    
>>>>>>> db77d13... Fix score bug
        
        
        
        for ch in lettersArray {
            
            if displayArray == lettersArray {
            announcementBoard.text = "Yayyyyy! Click 'NEXT' for next round!"
                
                
            }
            else {
            index = index + 1
            
            
            if sender.currentTitle == ch {
				occurence = occurence + 1
                if displayArray[index] == "🐼" {
                    score = score + 1}
                
                displayArray[index] = ch
                
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
<<<<<<< HEAD
			// TODO. compare each char in the answer array with the button's title
			// if there's a match, update the score and the display
		}
=======
            }
            
>>>>>>> a199765... About to throw the laptop if I cannot commit and push this time...
		
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
<<<<<<< HEAD
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
=======


    @IBAction func nextButton(sender: UIButton) {
            wordBoard.text = ""
            lettersArray = [String]()
            displayArray = [String]()
<<<<<<< HEAD
            answer = "CHRIST"
            let charactersInAnswer = Array(answer.characters)
            
            announcementBoard.text = "Start by picking a letter"
>>>>>>> db77d13... Fix score bug
            
    announcementBoard.text = "Start by picking a letter"
        
    for ch in charactersInAnswer {
    lettersArray.append(String(ch))
            }
    for i in 1...lettersArray.count {
        displayArray.append("🐼") // everything is initially 🐼
        wordBoard.text = wordBoard.text! + displayArray[i - 1]
            }

=======
            count = count + 1
            answer = "\(answerArray[count])"
            initView()
    }
    
>>>>>>> bf4e753... Add some more cool answers, except for 'CHRIS' which is not cool at all !!!
    }
