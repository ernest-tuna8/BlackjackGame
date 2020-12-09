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
    let usercard1: Int = -1
    let usercard2: Int = -1
    let Dealercard1: Int = -1
    let Dealercard2: Int = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usercard1 = Card.generateCard(self:Card)
        usercard2 = Card.generateCard(self: Card)
        
    }

    @IBAction func hitButtonFunction(_ sender: UIButton) {
        let newCard = Card()
        let newNumber = newCard.generateCard()
        print(newNumber)
    }
    
}

