// Playground - noun: a place where people can play

let coins = [1, 5, 7, 8, 4, 6, 10, 23]

let coinPairDiff = 3

let numberOfCoins = coins.count

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
