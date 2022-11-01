//
//  SplashScreen.swift
//  Codiy
//
//  Created by Luiz Eduardo Mello dos Reis on 31/10/22.
//

import SwiftUI

struct SplashScreen: View {
    
    @State var animationValues: [Bool] = Array(repeating: false, count: 15)
    var screenSize = UIScreen.main.bounds
    var centerWidth = UIScreen.main.bounds.width/2


    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                    Image("e1")
                        .rotationEffect(Angle(degrees: animationValues[1] ? 130 : 0))
                        .offset(y: animationValues[1] ? screenSize.height + 60 : 0)
                    Image("e2")
                        .rotationEffect(Angle(degrees: animationValues[2] ? 300 : 0))
                        .offset(y: animationValues[2] ? screenSize.height + 60 : 0)

                    Image("e3")
                        .rotationEffect(Angle(degrees: animationValues[3] ? 100 : 0))
                        .offset(y: animationValues[3] ? screenSize.height + 60 : 0)

                    Image("e4")
                        .rotationEffect(Angle(degrees: animationValues[4] ? 30 : 0))
                        .offset(y: animationValues[4] ? screenSize.height + 60 : 0)

                    Image("e5")
                        .rotationEffect(Angle(degrees: animationValues[5] ? 530 : 0))
                        .offset( y: animationValues[5] ? screenSize.height + 60 : 0)

                    Image("e6")
                        .rotationEffect(Angle(degrees: animationValues[6] ? 323 : 0))
                        .offset(y: animationValues[6] ? screenSize.height + 60 : 0)

                    Image("e7")
                        .rotationEffect(Angle(degrees: animationValues[7] ? 285 : 0))
                        .offset(y: animationValues[7] ? screenSize.height + 60 : 0)
                        Image("e8")
                        .rotationEffect(Angle(degrees: animationValues[8] ? 230 : 0))
                        .offset(y: animationValues[8] ? screenSize.height + 60 : 0)
                }
                .padding(.horizontal, 60)
                .position(x: centerWidth, y: (screenSize.height - screenSize.height) - 30)
            VStack(spacing: 0){
                Image("logo")
                    .scaleEffect(animationValues[0] ? 1 : 0, anchor: .center)
                Text("O app para alavancar sua carreira!")
                    .foregroundColor(Color("Slogan"))
                    .opacity(animationValues[9] ? 1 : 0)
            }

        }
        .ignoresSafeArea()
        .environment(\.colorScheme, .light)
        .onAppear {
            //animation logo
            withAnimation(.linear(duration: 0.5)) {
                animationValues[0] = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.linear(duration: 2).delay(0.1)) {
                    animationValues[1] = true
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                withAnimation(.linear(duration: 1.3).delay(0.2)) {
                    animationValues[2] = true
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                withAnimation(.linear(duration: 1.5).delay(0.1)) {
                    animationValues[3] = true
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.linear(duration: 1.8).delay(0.3)) {
                    animationValues[4] = true
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                withAnimation(.linear(duration: 2).delay(0.12)) {
                    animationValues[5] = true
                }
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.linear(duration: 1.6).delay(0.14)) {
                    animationValues[6] = true
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.linear(duration: 1.4).delay(0.1)) {
                    animationValues[7] = true
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.linear(duration: 1.3).delay(0.12)) {
                    animationValues[8] = true
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                withAnimation(.easeInOut(duration: 1)) {
                    animationValues[9] = true
                }
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
