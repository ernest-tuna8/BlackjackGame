//
//  Card.swift
//  BlackjackGame
//
//  Created by Tiger Coder on 12/8/20.
//  Copyright © 2020 clc babischkin. All rights reserved.
//

import Foundation
class Card {

    var cardValues = [Int : String]()
    var intValues = [1,2,3,4,5,6,7,8,9,10,10,10,10]
    var stringValues = ["Ace","2","3","4","5","6","7","8","9","10","Jack","Queen","King"]
    
    for index in 1...13 {
    let daCard = cardValues(cardInts: intValues[index], cardStrings: stringValues[index])
    cardValues.append(daCard)
    }

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
