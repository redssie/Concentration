//
//  Card.swift
//  Concentration
//
//  Created by Maja Zafran on 12/12/2017.
//  Copyright © 2017 Maja Zafran. All rights reserved.
//

import Foundation

struct Card: Hashable {
    var hashValue: Int {
        return identifier
    }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init(){
        //we need a unique identifier
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
