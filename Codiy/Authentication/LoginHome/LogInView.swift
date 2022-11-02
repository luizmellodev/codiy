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
            
            VStack(spacing: 20) {
                TextFieldComponent(text: "Teste", icon: "logo", isNavigate: $isNavigate)
            }
        }
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}

struct TextFieldComponent: View {
    var text: String
    var icon: String
    @Binding var isNavigate: Bool
    var body: some View {
        Button {
            self.isNavigate = true
        } label: {
            NavigationLink(destination: WelcomeView(), isActive: $isNavigate) {
                HStack {
                    Image(icon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
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
}
struct TextFieldComponent_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldComponent(text: "Teste", icon: "logo", isNavigate: .constant(true))
    }
}
