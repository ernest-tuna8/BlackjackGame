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
    @IBOutlet weak var DealerLabel: UILabel!
    @IBOutlet weak var Playerlabel: UILabel!
    var usercards = [Card]()
    var dealercards = [Card]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        count1 = 0
        count2 = 0
        while count1 <  {
            <#code#>
        }
        DealerLabel.text = "The dealer has a \(dealercards) and a card face down"
        Playerlabel.text = "The play has a \(usercards) and a card"
    }

    @IBAction func hitButtonFunction(_ sender: UIButton) {
        let newCard = Card()
        let newNumber = newCard.generateCard()
        print(newNumber)
        var totalCards = 0 + newNumber
        Playerlabel.text = (Playerlabel.text ?? "")  + "\(newNumber)"
        if (totalCards > 21) {
        print("You Lose!")
        }
    }
    @IBAction func Standbutton(_ sender: UIButton) {
        var playertotal = usercards.reduce(0,+)
        
        var dealertotal = dealercards.reduce(0,+)
        while dealertotal < playertotal || dealertotal >= 21  {
            dealercards
        }
        dealercards.append(<#T##Sequence#>)
        
        
    }
    
}

