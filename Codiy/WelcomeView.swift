//
//  WelcomeView.swift
//  Codiy
//
//  Created by Luiz Eduardo Mello dos Reis on 01/11/22.
//

import SwiftUI

struct WelcomeView: View {
    var screenSize = UIScreen.main.bounds.size
    var body: some View {
        NavigationView {
            ZStack {
                Color("PurpleBackground")
                    .ignoresSafeArea()
                Image("backgroundDraw")
                    .resizable(resizingMode: .stretch)
                    .scaledToFill()
                    .padding(.top, 150)
                VStack {
                    Spacer()
                    Image("backgroundDrawback")
                        .resizable(resizingMode: .stretch)
                        .scaledToFit()
                        .frame(maxWidth: 2000)
                }
                VStack {
                    Spacer()
                    Image("people")
                        .resizable(resizingMode: .stretch)
                        .scaledToFit()
                        .frame(maxWidth: screenSize.height > 1000 ? 400 : 200)
                        .padding(.bottom, screenSize.height > 1000 ? 350 : 140)
                }
                
                VStack {
                    let _ = print(screenSize.width, screenSize.height)
                    Image("logowhite")
                        .resizable(resizingMode: .stretch)
                        .scaledToFit()
                        .frame(maxWidth: 50)
                    Spacer()
                    VStack {
                        Text("Bem vindo(a)!")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 5)
                        
                        Text("Aprenda no app, faça jornadas, atividades.. tudo no seu tempo!")
                            .font(.title3)
                            .fontWeight(.regular)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    .scaleEffect(screenSize.height > 1000 ? 1.5 : 1)
                    .padding(.horizontal, 60)
                    .padding(.top, screenSize.height > 1000 ? 350 : 30)
                    
                    NavigationLink(destination: EmptyView()) {
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(width: 340, height: 60)
                            .cornerRadius(10)
                            .overlay {
                                Text("Começar!")
                                    .foregroundColor(Color("PurpleBackground"))
                                    .fontWeight(.semibold)
                            }
                            .scaleEffect(screenSize.height > 1000 ? 1.5 : 1)
                    }
                    .padding(.bottom, screenSize.height > 1000 ? 130 : 25)
                    
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
