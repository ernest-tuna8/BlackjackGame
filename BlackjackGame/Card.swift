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

    func generateCard() -> Int {
        let number = Int.random(in: 1...13)
        return number
    }
}
