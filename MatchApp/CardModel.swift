//
//  CardModel.swift
//  MatchApp
//
//  Created by Mohit Mourya on 13/07/20.
//  Copyright © 2020 Mohit Mourya. All rights reserved.
//

import Foundation

class CardModel {
    
    func getCards() -> [Card] {
        
        // Declare an empty array
        var generatedCards = [Card]()
        
        // Randomly generate 8 pairs of cards
        
        var generatedNumberArray = [Int]()
        
        while generatedNumberArray.count < 8 {
            
            // Generate a random number
            let randomNumber = Int.random(in: 1...13)
            
            // check for duplicate cards
            if generatedNumberArray.contains(randomNumber) == false {
                
                // Log the number
                generatedNumberArray.append(randomNumber)
                
                // Create card objects
                let cardOne = Card()
                let cardTwo = Card()
                
                // Set their image names
                cardOne.imageName = "card\(randomNumber)"
                cardTwo.imageName = "card\(randomNumber)"
                
                // Add them to the array
                generatedCards += [cardOne, cardTwo]
                                
            }
        }
        
            
        // Randomize the cards within the array
        generatedCards.shuffle()
            
            
        
                
        // Return the array
        return generatedCards
    }
}
