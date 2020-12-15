//
//  ViewController.swift
//  BlackjackGame
//
//  Created by Tiger Coder on 12/8/20.
//  Copyright © 2020 clc babischkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var hitButtonOutlet: UIButton!
    
    @IBOutlet weak var standButtonOutlet: UIButton!
    @IBOutlet weak var Playerlabel: UILabel!
    var deck = [Card]()
    @IBOutlet weak var userTotalLabelOutlet: UILabel!
    @IBOutlet weak var pulledAceLabelOutlet: UILabel!
    @IBOutlet weak var aceOneButton: UIButton!
    @IBOutlet weak var aceElevenButton: UIButton!
    
    
    
    var userTotal: Int = 0
    var dealerTotal: Int = 0
    
    //create an array of cards in viewdidload
    override func viewDidLoad() {
        super.viewDidLoad()
        pulledAceLabelOutlet.isHidden = true
        aceOneButton.isHidden = true
        aceElevenButton.isHidden = true
        
        for index in 1...13 {
            deck.append(Card(val: index, sui: "Hearts"))
        }
        for index in 1...13 {
            deck.append(Card(val: index, sui: "Spades"))
        }
        for index in 1...13 {
            deck.append(Card(val: index, sui: "Clubs"))
        }
        for index in 1...13 {
            deck.append(Card(val: index, sui: "Diamonds"))
        }
       // deck.append(Card(val: 2, sui: "Hearts"))
       // deck.append(Card(val: 3, sui: "Hearts"))
      
        }
  
//takes one card out of array and uses it
    @IBAction func hitButtonFunction(_ sender: UIButton) {
        let userCard : Card!
        userCard = deck.randomElement()
        if (userCard.value == 1) {
            pulledAceLabelOutlet.isHidden = false
            aceOneButton.isHidden = false
            aceElevenButton.isHidden = false
            Playerlabel.text = (Playerlabel.text ?? "") + " Ace of \(userCard.suit),"
            //print("Ace of \(userCard.suit)")
            userTotal = userTotal + userCard.value //we will change this later (NOT IMPORTANT)
            userTotalLabelOutlet.text = "User Total: \(userTotal)"
            print(userTotal)
        }
        else if (userCard.value == 11) {
            Playerlabel.text = (Playerlabel.text ?? "") + " Jack of \(userCard.suit),"
            //print("Jack of \(userCard.suit)")
            userTotal = userTotal + 10
            userTotalLabelOutlet.text = "User Total: \(userTotal)"
            print(userTotal)
        }
        else if (userCard.value == 12) {
            Playerlabel.text = (Playerlabel.text ?? "") + " Queen of \(userCard.suit),"
            //print("Queen of \(userCard.suit)")
            userTotal = userTotal + 10
            userTotalLabelOutlet.text = "User Total: \(userTotal)"
            print(userTotal)
        }
        else if (userCard.value == 13) {
            Playerlabel.text = (Playerlabel.text ?? "") + " King of \(userCard.suit),"
            //print("King of \(userCard.suit)")
            userTotal = userTotal + 10
            userTotalLabelOutlet.text = "User Total: \(userTotal)"
            print(userTotal)
        } else {
            Playerlabel.text = (Playerlabel.text ?? "") + " \(userCard.getCard()),"
            //print(userCard.getCard())
            userTotal = userTotal + userCard.value
            userTotalLabelOutlet.text = "User Total: \(userTotal)"
            print(userTotal)
        }
        
//        for element in 0...51 {
//            if (deck[element].value == 1) {
//                print("Ace of \(deck[element].suit)")
//            }
//           else if (deck[element].value == 11) {
//                print("Jack of \(deck[element].suit)")
//            }
//           else if (deck[element].value == 12) {
//                print("Queen of \(deck[element].suit)")
//            }
//           else if (deck[element].value == 13) {
//                print("King of \(deck[element].suit)")
//            } else {
//        print(deck[element].getCard())
//            }
//        }
        
    }
    @IBAction func Standbutton(_ sender: UIButton) {
        performSegue(withIdentifier: "Toscreen2", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! Loose_screen
        nvc.ustotal = userTotal
    }

}

