//
//  Loose screen.swift
//  BlackjackGame
//
//  Created by Tiger Coder on 12/10/20.
//  Copyright © 2020 clc babischkin. All rights reserved.
//

import UIKit

class Loose_screen: UIViewController {
    var ustotal: Int!
    var dealerTotal: Int = 0
    var deck2 = [Card]()
    var marker = false

    @IBOutlet weak var WinorLose: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        for index in 1...13 {
            deck2.append(Card(val: index, sui: "Hearts"))
        }
        for index in 1...13 {
            deck2.append(Card(val: index, sui: "Spades"))
        }
        for index in 1...13 {
            deck2.append(Card(val: index, sui: "Clubs"))
        }
        for index in 1...13 {
            deck2.append(Card(val: index, sui: "Diamonds"))
        }
        while dealerTotal<=21 && dealerTotal < ustotal {
             let dealerCard : Card!
                   dealerCard = deck2.randomElement()
                   if (dealerCard.value == 1) {
                    if dealerTotal + 11 < 21 {
                        dealerTotal = dealerTotal + 11
                        marker = true
                    }
                    else {
                       dealerTotal = dealerTotal + dealerCard.value
                    }
                                          }
                   else if (dealerCard.value == 11) {
                       //print("Jack of \(userCard.suit)")
                       dealerTotal = dealerTotal + 10
                   }
                   else if (dealerCard.value == 12) {
                       
                       //print("Queen of \(userCard.suit)")
                       dealerTotal = dealerTotal + 10
                       
                   }
                   else if (dealerCard.value == 13) {
                       
                       //print("King of \(userCard.suit)")
                       dealerTotal = dealerTotal + 10
                   }
                   else {
                       
                       //print(userCard.getCard())
                       dealerTotal = dealerTotal + dealerCard.value
                   }
            if dealerTotal > 21 && marker == true{
                dealerTotal = dealerTotal - 11
                dealerTotal = dealerTotal + 1
                marker = false
            }
        }
        if dealerTotal > 21 {
            WinorLose.text = "you win since the dealer bust, they went over 21 with a total of \(dealerTotal) while you got \(ustotal)"
        }
        else if dealerTotal > ustotal {
            WinorLose.text = "You lose, the dealer got closer to 21 than you since they got \(dealerTotal) while you got \(ustotal)"
        }

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
