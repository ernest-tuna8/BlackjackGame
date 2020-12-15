//
//  Card.swift
//  BlackjackGame
//
//  Created by Tiger Coder on 12/8/20.
//  Copyright © 2020 clc babischkin. All rights reserved.
//

import Foundation
class Card {
    var value : Int
    var suit : String
    
    //
    //one single card string as value and suit
    //init should build the card with two values (give me a 2 and heart)
    init(val : Int, sui : String) {
        value = val
        suit = sui
        }
    func getCard() -> String {
        return "\(value) of \(suit)" //make if statement for value if less than 2 or greater than 10
    }

}
