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
    @IBOutlet weak var youBustButtonOutlet: UIButton!
    
    
    
    
    var userTotal: Int = 0
    var dealerTotal: Int = 0
    
    //create an array of cards in viewdidload
    override func viewDidLoad() {
        super.viewDidLoad()
        youBustButtonOutlet.isHidden = true
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
       
    }
  
//takes one card out of array and uses it
    @IBAction func hitButtonFunction(_ sender: UIButton) {
        let userCard : Card!
        userCard = deck.randomElement()
        if (userCard.value == 1) {
            hitButtonOutlet.isEnabled = false
            pulledAceLabelOutlet.isHidden = false
            aceOneButton.isHidden = false
            aceElevenButton.isHidden = false
            Playerlabel.text = (Playerlabel.text ?? "") + " Ace of \(userCard.suit),"
        }
        else if (userCard.value == 11) {
            Playerlabel.text = (Playerlabel.text ?? "") + " Jack of \(userCard.suit),"
            userTotal = userTotal + 10
            userTotalLabelOutlet.text = "User Total: \(userTotal)"
                if (userTotal > 21) {
                    hitButtonOutlet.isEnabled = false
                    standButtonOutlet.isEnabled = false
                    youBustButtonOutlet.isHidden = false
                }
        }
        else if (userCard.value == 12) {
            Playerlabel.text = (Playerlabel.text ?? "") + " Queen of \(userCard.suit),"
            userTotal = userTotal + 10
            userTotalLabelOutlet.text = "User Total: \(userTotal)"
            if (userTotal > 21) {
                hitButtonOutlet.isEnabled = false
                standButtonOutlet.isEnabled = false
                youBustButtonOutlet.isHidden = false
            }
        }
        else if (userCard.value == 13) {
            Playerlabel.text = (Playerlabel.text ?? "") + " King of \(userCard.suit),"
            userTotal = userTotal + 10
            userTotalLabelOutlet.text = "User Total: \(userTotal)"
            if (userTotal > 21) {
                hitButtonOutlet.isEnabled = false
                standButtonOutlet.isEnabled = false
                youBustButtonOutlet.isHidden = false
            }
        } else {
            Playerlabel.text = (Playerlabel.text ?? "") + " \(userCard.getCard()),"
            userTotal = userTotal + userCard.value
            userTotalLabelOutlet.text = "User Total: \(userTotal)"
            if (userTotal > 21) {
                hitButtonOutlet.isEnabled = false
                standButtonOutlet.isEnabled = false
                youBustButtonOutlet.isHidden = false
            }
        }
       }
        
    
    
    @IBAction func aceOneButtonFunction(_ sender: UIButton) {
    userTotal = userTotal + 1
    pulledAceLabelOutlet.isHidden = true
    aceOneButton.isHidden = true
    aceElevenButton.isHidden = true
    userTotalLabelOutlet.text = "User Total: \(userTotal)"
    hitButtonOutlet.isEnabled = true
        if (userTotal > 21) {
            hitButtonOutlet.isEnabled = false
            standButtonOutlet.isEnabled = false
            youBustButtonOutlet.isHidden = false
        }
    }
    
    @IBAction func aceElevenButtonFunction(_ sender: UIButton) {
    userTotal = userTotal + 11
    pulledAceLabelOutlet.isHidden = true
    aceOneButton.isHidden = true
    aceElevenButton.isHidden = true
    userTotalLabelOutlet.text = "User Total: \(userTotal)"
    hitButtonOutlet.isEnabled = true
        if (userTotal > 21) {
            hitButtonOutlet.isEnabled = false
            standButtonOutlet.isEnabled = false
            youBustButtonOutlet.isHidden = false
        }
    }
    
    
    @IBAction func youBustButtonFunction(_ sender: UIButton) {
    hitButtonOutlet.isEnabled = true
    standButtonOutlet.isEnabled = true
    youBustButtonOutlet.isHidden = true
    userTotal = 0
    dealerTotal = 0
    userTotalLabelOutlet.text = "User Total: "
    Playerlabel.text = "User's Cards: "
    
    }
    
    
    @IBAction func Standbutton(_ sender: UIButton) {
        performSegue(withIdentifier: "Toscreen2", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! Loose_screen
        nvc.ustotal = userTotal
    }
    @IBAction func unwind(_ seg:UIStoryboardSegue) {
        
    }
}


