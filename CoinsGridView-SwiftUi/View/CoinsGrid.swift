//
//  CoinsGrid.swift
//  CoinsGridView-SwiftUi
//
//  Created by Nimish Sharad Mothghare on 16/03/25.
//

import SwiftUI
import Charts

struct CoinsGrid: View {
    
    var coins : Coin
    var body: some View {
        
        VStack(alignment: .leading) {
            
            
            HStack(alignment: .center){
                
                AsyncImage(url: URL(string: coins.coinImage)) { image  in image.resizable()
                    
                }
                placeholder: {Color.gray}
                    .frame(width: 45,height:45)
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                
                
                VStack(alignment: .leading) {
                    
                    Text(coins.coinName)
                        .font(.custom(FontUtils.MAIN_BOLD, size: 16))
                        .foregroundStyle(.white)
                        .padding(.bottom,5)
                    
                    
                    Text(coins.coinTicker)
                        .font(.custom(FontUtils.MAIN_REGULAR, size: 14))
                        .foregroundStyle(.white).opacity(0.5)
                }
                
                
                Spacer()
                
            }
            
            Spacer()
            
            HStack {
                
                VStack(alignment: .leading) {
                    
                    Text("$\(coins.coinPrice)")
                        .font(.custom(FontUtils.MAIN_BOLD, size: 16))
                        .foregroundStyle(.white)
                    
                    HStack(alignment: .center) {
                        
                        Image(systemName: coins.coinGoingUp ? "chevron.up" : "chevron.down")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 12)
                            .foregroundStyle(coins.coinGoingUp ? .green : .red)
                            .font(Font.title.weight(.bold))

                        Text(coins.coinMove)
                            .font(.custom(FontUtils.MAIN_REGULAR, size: 14))
                            .foregroundStyle(coins.coinGoingUp ? .green : .red)
                        
                        
                    }
                    
                    .padding(.horizontal)
                    .padding(.vertical,7)
                    .background(.white)
                    .cornerRadius(30)
                    
                }
                
                Chart {
                    ForEach(0..<5, id: \.self) { item in
                        BarMark(
                            x: .value("x", item),
                            y: .value("y", Int.random(in: 0...5))
                        )
                        .lineStyle(.init(lineWidth: 2))
                        .foregroundStyle(.white)
                        .opacity(0.5)
                        
                    }
                }
                .chartYAxis(.hidden)
                .chartXAxis(.hidden)
                
                
                
            }
            
            
            
        }
        .padding()
        .frame(width: 190, height: 170)
        .background( LinearGradient(
            colors: coins.coinColors,
            startPoint: .topLeading,
            endPoint: .bottomTrailing))
        
        .cornerRadius(15)
        .shadow(radius: 3)
        
    }
}

#Preview {
    CoinsGrid(coins: Coin(coinName: "Bitcoin", coinTicker: "BTC", coinImage: "https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/1024/Bitcoin-BTC-icon.png", coinPrice: "17,000", coinGoingUp: true, coinMove: "2.5", coinColors: [Color(hex: "#FEA82E"), Color(hex: "#F49219")], mcap: "893.12"))
}
