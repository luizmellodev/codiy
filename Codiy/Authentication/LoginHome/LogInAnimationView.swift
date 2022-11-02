//
//  LogInAnimationView.swift
//  Codiy
//
//  Created by Luiz Eduardo Mello dos Reis on 01/11/22.
//

import SwiftUI

struct LogInAnimationView: View {
    @State var animationValues: [Bool] = Array(repeating: false, count: 15)
    var screenSize = UIScreen.main.bounds
    var centerWidth = UIScreen.main.bounds.width/2
    
    
    var body: some View {
        ZStack {
            HStack(spacing: 0) {
                Image("e1")
                    .rotationEffect(Angle(degrees: animationValues[1] ? 30 : 0))
                    .offset(y: animationValues[1] ? 100 : 120)
                    .position(x: centerWidth - 150, y: (screenSize.height - screenSize.height) - 60)
                Image("e2")
                    .rotationEffect(Angle(degrees: animationValues[1] ? 30 : 0))
                    .offset(y: animationValues[1] ? 100 : 110)
                    .position(x: centerWidth - 120, y: (screenSize.height - screenSize.height))
                
                Image("e3")
                    .rotationEffect(Angle(degrees: animationValues[1] ? 14 : 0))
                    .offset(y: animationValues[1] ? 100 : 74)
                    .position(x: centerWidth - 1, y: (screenSize.height - screenSize.height) + 62)
                
                Image("e4")
                    .rotationEffect(Angle(degrees: animationValues[1] ? 18 : 0))
                    .offset(y: animationValues[1] ? 100 : 63)
                    .position(x: centerWidth - 120, y: (screenSize.height - screenSize.height) + 32)

                Image("e5")
                    .rotationEffect(Angle(degrees: animationValues[1] ? 53 : 0))
                    .offset(y: animationValues[1] ? 100 : 90)
                    .position(x: centerWidth - 38, y: (screenSize.height - screenSize.height) + 120)
                
                Image("e6")
                    .rotationEffect(Angle(degrees: animationValues[1] ? 14 : 0))
                    .offset(y: animationValues[1] ? 100 : 84)
                    .position(x: centerWidth - 370, y: (screenSize.height - screenSize.height) + 90)
                
                Image("e7")
                    .rotationEffect(Angle(degrees: animationValues[1] ? 53 : 0))
                    .offset(y: animationValues[1] ? 100 : 123)
                    .position(x: centerWidth - 150, y: (screenSize.height - screenSize.height) - 60)
                Image("e8")
                    .rotationEffect(Angle(degrees: animationValues[1] ? 82 : 190))
                    .offset(y: animationValues[1] ? 170 : 190)
                    .position(x: centerWidth - 290, y: (screenSize.height - screenSize.height) + 120)
            }
            .frame(maxWidth: screenSize.height > 1000 ? 200 : 1)
            .padding(.trailing, screenSize.height > 1000 ? 600 : 1)
            VStack(spacing: 0){
                Image("logo")
                    .scaleEffect(animationValues[1] ? 1.01 : 1)
                    .offset(y: animationValues[1] ? 30 : 20)
                Spacer()
            }
            .padding(.top, 160)
            
        }
        .scaleEffect(screenSize.height > 1000 ? 1.7 : 1, anchor: .top)
        .ignoresSafeArea()
        .environment(\.colorScheme, .light)
        .onAppear {
            //animation logo
            withAnimation(.linear(duration: 0.5)) {
                animationValues[0] = true
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now()) {
                withAnimation(.easeInOut(duration: 10).repeatForever()) {
                    animationValues[1] = true
                }
            }
        }
    }
}

struct LogInAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        LogInAnimationView()
    }
}
