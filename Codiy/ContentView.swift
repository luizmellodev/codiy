//
//  ContentView.swift
//  Codiy
//
//  Created by Luiz Eduardo Mello dos Reis on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    var screenSize = UIScreen.main.bounds.size
    @State var showSplash = true
    var body: some View {
        ZStack {
            if showSplash {
                SplashScreen()
                    .scaleEffect(screenSize.height > 1000 ? 2 : 1)
            }
            else {
                WelcomeView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.showSplash = false
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
