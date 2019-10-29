//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    lazy var arrayOfCards: [UIButton] = [card1, card2, card3]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBOutlet weak var winLose: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let images = ["threeCard", "kingCard"]
        var winningCard = Int.random(in: 0...2)
        switch sender.tag{
        case 0:
            if winningCard == sender.tag {
                sender.setBackgroundImage(#imageLiteral(resourceName: "kingCard.jpg"), for: .normal)
                winLose.text = "You win!"
            } else {
                winLose.text = "You lost"
                sender.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
            }
            
            for card in arrayOfCards {
                        card.isEnabled = false
                    }
        case 1:
            if winningCard == sender.tag {
                sender.setBackgroundImage(#imageLiteral(resourceName: "kingCard.jpg"), for: .normal)
                         winLose.text = "You win!"
            } else {
                    winLose.text = "You lost"
                sender.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
                     }
          for card in arrayOfCards {
              card.isEnabled = false
          }
        case 2:
           if winningCard == sender.tag {
                sender.setBackgroundImage(#imageLiteral(resourceName: "kingCard.jpg"), for: .normal)
                         winLose.text = "You win!"
            } else {
                    winLose.text = "You lost"
                sender.setBackgroundImage(#imageLiteral(resourceName: "threeCard.png"), for: .normal)
                     }
            
            for card in arrayOfCards {
                card.isEnabled = false
            }
            
        default:
            print("Not a card")
        }
        

        
        // let newImage: (image: )
        
    }
    
    @IBAction func newGame(_ sender: UIButton) {
        for game in arrayOfCards {
            game.isEnabled = true
            game.setBackgroundImage(#imageLiteral(resourceName: "cardBackRed.png"), for: .normal)
        }
    }
    
    
    
    
}




