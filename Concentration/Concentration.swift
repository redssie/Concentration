//
//  Concentration.swift
//  Concentration
//
//  Created by Maja Zafran on 12/12/2017.
//  Copyright © 2017 Maja Zafran. All rights reserved.
//

import Foundation
import GameplayKit

class Concentration {
    
    private(set) var cards = [Card]()
    
    private var indexOfOneAndOnlyFaceUpCard: Int? {
        get {
            var foundIndex: Int?
            for index in cards.indices {
                if cards[index].isFaceUp {
                    if foundIndex == nil {
                        foundIndex = index
                    } else {
                        return nil
                    }
                }
            }
            return foundIndex
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = (index == newValue)
            }
        }
    }
    var points = 0
    var arrayOfViewedCards = [Int]()
    
    func chooseCard(at index: Int){
        //checks if cards are already matched and so invisible
        assert(cards.indices.contains(index), "Concentrtion.chosenCard(at: \(index)): chosen index not in the cards.")
        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                //check if cards match
                if cards[matchIndex] == cards[index] {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                    points += 2
                } else {
                    //checks if we've seen either of cards before - if so you lose one point per seen card
                    arrayOfViewedCards.contains(matchIndex) ? points -= 1 : arrayOfViewedCards.append(matchIndex)
                    
                    arrayOfViewedCards.contains(index) ? points -= 1 : arrayOfViewedCards.append(index)
                    
                }
                cards[index].isFaceUp = true
            } else {
                //either no cards or 2 cards are face up
                indexOfOneAndOnlyFaceUpCard = index
                
            }
            
        }
    }
    
    init(numberOfPairsOfCards: Int){
        assert(numberOfPairsOfCards > 0, "Concentration.init(\(numberOfPairsOfCards)): you must have at least 1 pair of cards.")
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            //let matchingCard = card - this is a copy of the card
            //cards.append(card)
            //cards.append(card)
            cards += [card, card]
            
        }
        
        //shufle cards
        cards = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: cards) as! [Card]
        
        
    }
    
}
