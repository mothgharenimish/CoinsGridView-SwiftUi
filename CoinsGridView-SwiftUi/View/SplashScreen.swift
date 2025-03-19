//
//  SplashScreen.swift
//  CoinsGridView-SwiftUi
//
//  Created by Nimish Sharad Mothghare on 18/03/25.
//

import SwiftUI

struct SplashScreen: View {
    
    @State private var isActive : Bool = false
    let coinsscreen = Coins()
    var body: some View {
        
        NavigationView {
            ZStack {
                
                LinearGradient(gradient: Gradient(colors: [Color(hex: "#1A74D5"),Color(hex: "#6A32CF"),Color(hex: "#6A32CF")]), startPoint: .top, endPoint: .bottom).ignoresSafeArea(.all)
                
                VStack {
                    
                    Text("Coins Grid")
                    //                    .font(.custom(FontUtils.MAIN_BOLD, size: 40))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundStyle(.white).opacity(0.5)
                    
                    NavigationLink(destination: coinsscreen,
                                   isActive: $isActive,
                                   label: { EmptyView() }
                                   
                    
                    )
                    .navigationBarBackButtonHidden(true)
                }
                
                .onAppear(perform: {
                    self.gotoStudentScreen(time: 2.5)
                })
            }
        }
    }
    
    func gotoStudentScreen(time: Double) {
           DispatchQueue.main.asyncAfter(deadline: .now() + Double(time)) {
               self.isActive = true
           }
       }
}

#Preview {
    SplashScreen()
}

