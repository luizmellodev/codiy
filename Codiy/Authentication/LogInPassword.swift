//
//  LogInPassword.swift
//  Codiy
//
//  Created by Luiz Eduardo Mello dos Reis on 02/11/22.
//

import SwiftUI
import Combine

struct LogInPassword: View {
    @State var email: String
    @State var password: String
    @State var isUserTyping = false
    @FocusState private var nameIsFocused: Bool
    
    var body: some View {
        ZStack {
            Color("Background")
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80)
                
                Text("Entrar com sua conta")
                    .foregroundColor(Color("TextColor"))
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(spacing: 30) {
                    TextField("Email", text: $email)
                        .foregroundColor(isUserTyping ? Color("PrimaryColor") : .primary)
                        .frame(width: 350, height: 35)
                        .padding(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(isUserTyping ? Color("PrimaryColor") : Color("TertiaryColor"), lineWidth: 1)
                        }
                        .onReceive(Just($email)) { _ in
                            self.isUserTyping = true
                        }
                    SecureField("Senha", text: $password)
                        .foregroundColor(isUserTyping ? Color("Primary") : .primary)
                        .frame(width: 350, height: 35)
                        .padding(10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color("TertiaryColor"), lineWidth: 1)
                        }
                    HStack {
                        Spacer()
                        NavigationLink {
                            //navegar pra tela de recuperar conta
                        } label: {
                            Text("Esqueci minha senha")
                                .foregroundColor(.primary)
                        }
                    }
                    .frame(width: 350, height: 35)
                    
                }
            }
        }
    }
}

struct LogInPassword_Previews: PreviewProvider {
    static var previews: some View {
        LogInPassword(email: "", password: "")
    }
}
