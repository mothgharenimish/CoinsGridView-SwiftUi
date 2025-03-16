//
//  Model.swift
//  CoinsGridView-SwiftUi
//
//  Created by Nimish Sharad Mothghare on 16/03/25.
//

import Foundation
import SwiftUI

class Coin: Identifiable {
    let id = UUID()

    var coinName: String
    var coinTicker: String
    var coinImage: String
    var coinPrice: String
    var coinGoingUp: Bool
    var coinMove: String
    var coinColors: [Color]
    var mcap: String
    
    init(coinName: String, coinTicker: String, coinImage: String, coinPrice: String, coinGoingUp: Bool, coinMove: String, coinColors: [Color], mcap: String) {
        self.coinName = coinName
        self.coinTicker = coinTicker
        self.coinImage = coinImage
        self.coinPrice = coinPrice
        self.coinGoingUp = coinGoingUp
        self.coinMove = coinMove
        self.coinColors = coinColors
        self.mcap = mcap
    }
    
}


var coins: [Coin] = [
    Coin(coinName: "Bitcoin", coinTicker: "BTC", coinImage: "https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/1024/Bitcoin-BTC-icon.png", coinPrice: "17,000", coinGoingUp: true, coinMove: "2.5", coinColors: [Color(hex: "#FEA82E"), Color(hex: "#F49219")], mcap: "893.12"),
    
    Coin(coinName: "Ethreum", coinTicker: "ETH", coinImage: "https://png.pngtree.com/png-vector/20210427/ourmid/pngtree-ethereum-cryptocurrency-coin-icon-png-image_3246438.jpg", coinPrice: "1,100", coinGoingUp: false, coinMove: "1.5", coinColors: [Color(hex: "#383838"), Color(hex: "#161717")], mcap: "393.12"),
    
    Coin(coinName: "Polygon", coinTicker: "MATIC", coinImage: "https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png", coinPrice: "0,8", coinGoingUp: false, coinMove: "0.5", coinColors: [Color(hex: "#7E43DA"), Color(hex: "#6A32CF")], mcap: "33.12"),
    
    
    Coin(coinName: "Solana", coinTicker: "SOL", coinImage: "https://upload.wikimedia.org/wikipedia/en/b/b9/Solana_logo.png", coinPrice: "18", coinGoingUp: true, coinMove: "5", coinColors: [Color(hex: "#1DEA97"), Color(hex: "#9241F2")], mcap: "3.12")
    
]
