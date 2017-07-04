//: Playground - noun: a place where people can play

import UIKit

func tossCoin() -> String {
    let coin: [String] = ["heads", "tails"]
    let random = Int(arc4random_uniform(2))
    print("Tossing a Coin!")
    return "You got \(coin[random])"
}

func tossMultipleCoins(num: Int) -> Double {
    var heads: Double = 0
    for i in 1...num {
        let random = Int(arc4random_uniform(2))
        if random == 0 {
            heads += 1
        }
    }
    return (heads/Double(num))
}

tossMultipleCoins(num: 10)