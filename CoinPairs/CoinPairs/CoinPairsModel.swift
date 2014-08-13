//
//  CoinPairsModel.swift
//  CoinPairs
//
//  Created by hydrajump on 13/08/2014.
//  Copyright (c) 2014 hydrajump. All rights reserved.
//

import Foundation

class CoinPairsModel {

    var coins: [Int]
    var coinPairDiff: Int
    var numberOfCoins: Int {
        get {
            return coins.count
        }
    }

    init(coins: [Int], coinPairDiff: Int) {
        self.coins = coins
        self.coinPairDiff = coinPairDiff
    }
    
    func findCoinPairs() -> Int {
        var coinPairs = 0
    
        // Iterate over the coins array
        for (index, coin) in enumerate(coins) {
            println("index,coin: \(index,coin)")
            
            // Starting at the current coin element iterate over the remaining elements
            // in the coins array. The previous elements have already been compared, so
            // there is no point in comparing index with index-1.
            for var currentIndex = index; currentIndex < numberOfCoins; ++currentIndex {
                println("coin: \(currentIndex)")
                
                // Only interested in the absolute value, so the direction of
                // subtraction is irrelevant.
                if abs(coin - coins[currentIndex]) == coinPairDiff {
                    println("Found a coin pair: \(index,coin) and (\(currentIndex), \(coins[currentIndex]))")
                    coinPairs += 1
                }
            }
        }
        
        println("Found a total of \(coinPairs) coin pairs.")
        return coinPairs
    }
}
