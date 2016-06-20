//
//  ViewController.swift
//  MagicalHat
//
//  Created by THUC NHI on 6/19/16.
//  Copyright © 2016 THUC-NHI LE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var alphabet: String = ""
   
    var array = ["🐼","🐼","🐼","🐼","🐼","🐼","🐼","🐼"]
     var score: Int = 0
    @IBOutlet weak var scoreBoard: UILabel!
   

    @IBOutlet weak var wordBoard: UILabel!
    
    @IBOutlet weak var announcementBoard: UILabel!
    
    @IBAction func alphabetButton(sender: UIButton) {
        wordBoard.text = "\(array)"
         alphabet = sender.currentTitle!
        switch alphabet {
        case "E":
            array[0] = "E"
            array[2] = "E"
        case "L": array[1] = "L"
        case "P": array[3] = "P"
        case "H": array[4] = "H"
        case "A": array[5] = "A"
        case "N": array[6] = "N"
        case "T": array[7] = "T"
        default:  break       }
        wordBoard.text = "\(array)"
        
        if alphabet == "E" {
            announcementBoard.text = "There are 2 letters E"
            score = score + 2
            scoreBoard.text = "Score " + "\(score)"}
        else { if (alphabet == "L" || alphabet == "P" || alphabet == "H" || alphabet == "A" || alphabet == "N" || alphabet ==  "T") {
            announcementBoard.text = "There is one letter " + "\(alphabet)"
            score = score + 1
            scoreBoard.text = "Score " + "\(score)"
            }
        else { announcementBoard.text = "There is no " +  "\(alphabet)"
            scoreBoard.text = "Score " + "\(score)"}
        
    }
}
    @IBAction func quitButton(sender: UIButton) {
        wordBoard.text = "ELEPHANT"
        announcementBoard.text = "Your score is " + "\(score)" + " ." + "Good luck next time!!!"
        
    }
}
