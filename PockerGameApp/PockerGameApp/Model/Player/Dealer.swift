//
//  Dealer.swift
//  PockerGameApp
//
//  Created by 이건행 on 2022/05/11.
//

import Foundation

class Dealer: Participant {
    
    private let cardDeck = CardDeck()
    
    init() {
        super.init(name: "Dealer")
    }
    
    func cardShuffle() {
        cardDeck.shuffle()
    }
    
    func cardReset() {
        cardDeck.reset()
    }
    
    func removeOne() -> Card? {
        cardDeck.removeOne()
    }
    
    func hasRemainCardCount(stud: PokerGame.Stud, playerCount: PokerPlayers.Count) -> Bool {
        if cardDeck.deckCount < playerCount.value * stud.cardCount {
            return false
        }
        return true
    }
}
