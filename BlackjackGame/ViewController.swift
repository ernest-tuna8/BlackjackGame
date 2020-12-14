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
    var usercards = [Card,Int]()
    var dealercards = [Card,Int]()
    var usertotal: Int = 0
    var dealertotal: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        var count1 = 0
        var count2 = 0
        while count1 < 2 {
            usercards.append(Card())
            count1 = count1 + 1
        }
        while count2 < 2{
            usercards.append(Card())
            count2 = count2 + 1
        }
        DealerLabel.text = "The dealer has a \(dealercards) and a card face down"
        Playerlabel.text = "The play has \(usercards)"
    }

    @IBAction func hitButtonFunction(_ sender: UIButton) {
        let newCard = Card()
        let newNumber = newCard.generateCard()
        print(newNumber)
        //var totalCards = 0 + newNumber
        Playerlabel.text = (Playerlabel.text ?? " ")  + "\(newNumber), "
       // if (totalCards > 21) {
      //  print("You Lose!")
      //  }
    }
    @IBAction func Standbutton(_ sender: UIButton) {
        var playertotal = 0
        for dahcard in usercards {
            playertotal = playertotal + dahcard
            usertotal = playertotal
        }
        while dealertotal < usertotal  {
            dealercards.append(generateCard())
        }
        performSegue(withIdentifier: "To the next screen", sender: self)
        
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nvc = segue.destination as! Loose_screen
        nvc.dtotal = dealertotal
        nvc.ustotal = usertotal
    }
}

