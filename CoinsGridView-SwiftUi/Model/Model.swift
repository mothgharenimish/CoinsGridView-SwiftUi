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
    
    Coin(coinName: "Ethereum", coinTicker: "ETH", coinImage: "https://png.pngtree.com/png-vector/20210427/ourmid/pngtree-ethereum-cryptocurrency-coin-icon-png-image_3246438.jpg", coinPrice: "1,100", coinGoingUp: false, coinMove: "1.5", coinColors: [Color(hex: "#383838"), Color(hex: "#161717")], mcap: "393.12"),
    
    Coin(coinName: "Polygon", coinTicker: "MATIC", coinImage: "https://cloudfront-us-east-1.images.arcpublishing.com/coindesk/DPYBKVZG55EWFHIK2TVT3HTH7Y.png", coinPrice: "0.8", coinGoingUp: false, coinMove: "0.5", coinColors: [Color(hex: "#7E43DA"), Color(hex: "#6A32CF")], mcap: "3.12"),
    
    Coin(coinName: "Solana", coinTicker: "SOL", coinImage: "https://upload.wikimedia.org/wikipedia/en/b/b9/Solana_logo.png", coinPrice: "18", coinGoingUp: true, coinMove: "5", coinColors: [Color(hex: "#1DEA97"), Color(hex: "#9241F2")], mcap: "3.12"),
    
    Coin(coinName: "Cardano", coinTicker: "ADA", coinImage: "https://upload.wikimedia.org/wikipedia/commons/3/39/Cardano-logomark.png", coinPrice: "0.5", coinGoingUp: true, coinMove: "1.1", coinColors: [Color(hex: "#0033AD"), Color(hex: "#0053FF")], mcap: "2.8"),
    
    Coin(coinName: "Ripple", coinTicker: "XRP", coinImage: "https://cryptologos.cc/logos/xrp-xrp-logo.png", coinPrice: "0.40", coinGoingUp: false, coinMove: "0.8", coinColors: [Color(hex: "#346AA9"), Color(hex: "#0085C0")], mcap: "2.5"),
    
    Coin(coinName: "Dogecoin", coinTicker: "DOGE", coinImage: "https://cryptologos.cc/logos/dogecoin-doge-logo.png", coinPrice: "0.08", coinGoingUp: true, coinMove: "2.0", coinColors: [Color(hex: "#C2A633"), Color(hex: "#FFD700")], mcap: "1.3"),
    
    Coin(coinName: "Litecoin", coinTicker: "LTC", coinImage: "https://cryptologos.cc/logos/litecoin-ltc-logo.png", coinPrice: "60", coinGoingUp: false, coinMove: "1.5", coinColors: [Color(hex: "#B8B8B8"), Color(hex: "#CCCCCC")], mcap: "1.1"),
    
    Coin(coinName: "Polkadot", coinTicker: "DOT", coinImage: "https://cryptologos.cc/logos/polkadot-new-dot-logo.png", coinPrice: "5.5", coinGoingUp: true, coinMove: "3.0", coinColors: [Color(hex: "#E6007A"), Color(hex: "#D10065")], mcap: "8.6"),
    
    Coin(coinName: "Shiba Inu", coinTicker: "SHIB", coinImage: "https://cryptologos.cc/logos/shiba-inu-shib-logo.png", coinPrice: "0.000012", coinGoingUp: false, coinMove: "0.2", coinColors: [Color(hex: "#E42F09"), Color(hex: "#FF6F00")], mcap: "6.2"),
    
    Coin(coinName: "Avalanche", coinTicker: "AVAX", coinImage: "https://cryptologos.cc/logos/avalanche-avax-logo.png", coinPrice: "20", coinGoingUp: true, coinMove: "4.2", coinColors: [Color(hex: "#E84142"), Color(hex: "#B71C1C")], mcap: "5.3"),
    
    Coin(coinName: "Chainlink", coinTicker: "LINK", coinImage: "https://cryptologos.cc/logos/chainlink-link-logo.png", coinPrice: "7.5", coinGoingUp: false, coinMove: "0.7", coinColors: [Color(hex: "#2A5ADA"), Color(hex: "#1A43B8")], mcap: "4.8"),
    
    Coin(coinName: "Monero", coinTicker: "XMR", coinImage: "https://cryptologos.cc/logos/monero-xmr-logo.png", coinPrice: "150", coinGoingUp: true, coinMove: "2.2", coinColors: [Color(hex: "#FF6600"), Color(hex: "#E55E00")], mcap: "3.7"),
    
    Coin(coinName: "Binance Coin", coinTicker: "BNB", coinImage: "https://cryptologos.cc/logos/binance-coin-bnb-logo.png", coinPrice: "300", coinGoingUp: true, coinMove: "1.8", coinColors: [Color(hex: "#F3BA2F"), Color(hex: "#D4A32E")], mcap: "5.5"),
      
      Coin(coinName: "Terra", coinTicker: "LUNA", coinImage: "https://cryptologos.cc/logos/terra-luna-luna-logo.png", coinPrice: "75", coinGoingUp: false, coinMove: "2.3", coinColors: [Color(hex: "#1A74D5"), Color(hex: "#143C7E")], mcap: "3.2"),
      
      Coin(coinName: "Cosmos", coinTicker: "ATOM", coinImage: "https://cryptologos.cc/logos/cosmos-atom-logo.png", coinPrice: "13", coinGoingUp: true, coinMove: "1.2", coinColors: [Color(hex: "#2D2D2D"), Color(hex: "#434343")], mcap: "5.8"),
      
      Coin(coinName: "Algorand", coinTicker: "ALGO", coinImage: "https://cryptologos.cc/logos/algorand-algo-logo.png", coinPrice: "1.2", coinGoingUp: false, coinMove: "0.4", coinColors: [Color(hex: "#000000"), Color(hex: "#333333")], mcap: "2.3"),
      
      Coin(coinName: "VeChain", coinTicker: "VET", coinImage: "https://cryptologos.cc/logos/vechain-vet-logo.png", coinPrice: "0.03", coinGoingUp: true, coinMove: "0.1", coinColors: [Color(hex: "#15BDFF"), Color(hex: "#057AFF")], mcap: "1.2"),
      
      Coin(coinName: "Tron", coinTicker: "TRX", coinImage: "https://cryptologos.cc/logos/tron-trx-logo.png", coinPrice: "0.07", coinGoingUp: false, coinMove: "0.1", coinColors: [Color(hex: "#EB0029"), Color(hex: "#990017")], mcap: "4.1"),
      
      Coin(coinName: "Theta", coinTicker: "THETA", coinImage: "https://cryptologos.cc/logos/theta-tht-logo.png", coinPrice: "4.5", coinGoingUp: true, coinMove: "0.5", coinColors: [Color(hex: "#2AB8E6"), Color(hex: "#1E90FF")], mcap: "7.5"),
      
      Coin(coinName: "Tezos", coinTicker: "XTZ", coinImage: "https://cryptologos.cc/logos/tezos-xtz-logo.png", coinPrice: "3.2", coinGoingUp: false, coinMove: "0.2", coinColors: [Color(hex: "#0E76A8"), Color(hex: "#054F77")], mcap: "5.9"),
    
    Coin(coinName: "Chainlink", coinTicker: "LINK", coinImage: "https://cryptologos.cc/logos/chainlink-link-logo.png", coinPrice: "7.5", coinGoingUp: false, coinMove: "0.7", coinColors: [Color(hex: "#2A5ADA"), Color(hex: "#1A43B8")], mcap: "4.8")
]
