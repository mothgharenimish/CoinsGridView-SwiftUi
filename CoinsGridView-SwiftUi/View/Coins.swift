//
//  Coins.swift
//  CoinsGridView-SwiftUi
//
//  Created by Nimish Sharad Mothghare on 16/03/25.
//

import SwiftUI

struct Coins: View {
    private let adapativeColumns = [
        
        GridItem(.adaptive(minimum: 170))
    ]
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: adapativeColumns, spacing: 20) {
                    
                    ForEach(coins) { co in
                        
                        CoinsGrid(coins: co)
                        
                        
                    }
                }
                
                
            }
            .navigationTitle("Coins")
        }
        .navigationBarBackButtonHidden(true)

        
    }
}

#Preview {
    Coins()
}
