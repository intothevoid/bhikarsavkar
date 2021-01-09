//
//  ViewController.swift
//  bhikarsavkar
//
//  Created by Karan Kadam on 8/1/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftCardView: UIImageView!
    @IBOutlet weak var rightCardView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var playerScore: Int = 0
    var cpuScore: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Intialisation
        rightScoreLabel.text = String(cpuScore)
        leftScoreLabel.text = String(playerScore)
    }
    
    
    @IBAction func dealTap(_ sender: Any) {
        // Generate random numbers for card draw
        let leftCardNumber = Int.random(in: 2...14)
        let rightCardNumber = Int.random(in: 2...14)
        
        // Deal cards
        leftCardView.image = UIImage(named: "card\(leftCardNumber)")
        rightCardView.image = UIImage(named: "card\(rightCardNumber)")
        
        // Update the score labels
        updateScores(leftCardNumber, rightCardNumber)
    }
    
    func updateScores(_ leftCardNumber: Int,_ rightCardNumber: Int) -> Void {
        // CPU won this round
        if rightCardNumber > leftCardNumber {
            cpuScore += 1
            rightScoreLabel.text = String(cpuScore)
        }
        
        // Player won this round
        if leftCardNumber > rightCardNumber {
            playerScore += 1
            leftScoreLabel.text = String(playerScore)
        }
    }
    

}

