//
//  LogInView.swift
//  Codiy
//
//  Created by Luiz Eduardo Mello dos Reis on 01/11/22.
//

import SwiftUI

struct LogInView: View {
    @State var isNavigate = false
    
    var body: some View {
        ZStack {
            LogInAnimationView()
            
            VStack {
                Spacer()
                VStack(spacing: 20) {
                    ButtonComponent(text: "Entrar com a Apple", icon: "apple.logo", isSFSymbol: true)
                    
                    ButtonComponent(text: "Entrar com o Google", icon: "googlelogo", isSFSymbol: false)
                }
                .padding(.bottom, 90)
                VStack {
                    HStack {
                        Rectangle()
                            .frame(width: 130, height: 2)
                            .foregroundColor(Color("TertiaryColor"))
                        Text("ou")
                            .padding(.horizontal)
                        Rectangle()
                            .frame(width: 130, height: 2)
                            .foregroundColor(Color("TertiaryColor"))
                    }
                    .padding(.bottom, 40)
                    
                    NavigationLink(destination: EmptyView()) {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 330, height: 50)
                            .foregroundColor(Color("PrimaryColor"))
                            .overlay {
                                Text("Entrar com usuário e senha")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                            }
                    }
                    NavigationLink(destination: EmptyView()) {
                        HStack(spacing: 0) {
                            Text("Não tem uma conta? ")
                            Text("Registre-se")
                                .foregroundColor(.blue)
                        }
                        .foregroundColor(.primary)
                        .font(.footnote)
                        .padding(.vertical)
                    }
                    .padding(.bottom, 80)
                    
                }
            }
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}

struct ButtonComponent: View {
    var text: String
    var icon: String
    var isSFSymbol: Bool
    
    var body: some View {
        Button {
            //action
        } label: {
            HStack {
                if isSFSymbol {
                    Image(systemName: icon)
                        .frame(width: 20, height: 20)
                }
                else {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                }
                Text(text)
            }
            .frame(width: 300)
            .foregroundColor(Color.primary)
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("TertiaryColor"), lineWidth: 1.5)
            )
        }
    }
}
//struct TextFieldComponent_Previews: PreviewProvider {
//    static var previews: some View {
//        ButtonComponent(text: "Teste", icon: "logo", isSFSymbol: false)
//    }
//}
