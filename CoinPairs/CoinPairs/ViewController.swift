//
//  ViewController.swift
//  CoinPairs
//
//  Created by hydrajump on 13/08/2014.
//  Copyright (c) 2014 hydrajump. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coinPairDiffLabel: UILabel!
    @IBOutlet weak var coinPairDiffSlider: UISlider!
    @IBOutlet weak var coinsTextField: UITextField!

    @IBAction func coinPairDiffChanged(sender: AnyObject) {
        coinPairDiffLabel.text = "Coin Pair Difference (\(Int(coinPairDiffSlider.value))):"
    }

    @IBAction func findCoinPairsTapped(sender: AnyObject) {

        let coinPairDiff = Int(coinPairDiffSlider.value)

        let coins = coinsTextField.text.componentsSeparatedByString(",")
        println(coins)

        var userCoins: [Int] = []
        for coin in coins {
            println(coin.toInt()!)
            userCoins += [coin.toInt()!]
        }
        println(userCoins)

        let coinPairs = CoinPairsModel(coins: userCoins, coinPairDiff: coinPairDiff)
        coinPairs.findCoinPairs()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
