//
//  Card.swift
//  BlackjackGame
//
//  Created by Tiger Coder on 12/8/20.
//  Copyright © 2020 clc babischkin. All rights reserved.
//

import Foundation
class Card {

var cardValues = [String]()

init() {}

    func generateCard() -> Int {
        let number = Int.random(in: 0...12)
        return number
    }
}
