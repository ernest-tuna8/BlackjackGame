//
//  Card.swift
//  BlackjackGame
//
//  Created by Tiger Coder on 12/8/20.
//  Copyright © 2020 clc babischkin. All rights reserved.
//

import Foundation
class Card {

    var cardValues = [Int]()

    init() {
    cardValues.append(Int.random(in: 1...13))
    }

    func generateCard() -> String {
        let cardNumber = Int.random(in: 1...13)
        if (cardNumber < 2 || cardNumber > 10) {
            if (cardNumber == 1) { return "Ace"}
            if (cardNumber == 11) {return "Jack"}
            if (cardNumber == 12) {return "Queen"}
            if (cardNumber == 13) {return "King"}
        }
        return "\(cardNumber)"
    }
    
}
