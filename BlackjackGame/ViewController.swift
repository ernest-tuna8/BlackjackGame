//
//  ViewController.swift
//  BlackjackGame
//
//  Created by Tiger Coder on 12/8/20.
//  Copyright © 2020 clc babischkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var DealerLabel: UILabel!
    @IBOutlet weak var Playerlabel: UILabel!
    var usercard1: Int = -1
    var usercard2: Int = -1
    var Dealercard1: Int = -1
    var Dealercard2: Int = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        usercard1 = Card.generateCard(self:Card)
        usercard2 = Card.generateCard(self: Card)
        
    }


}

