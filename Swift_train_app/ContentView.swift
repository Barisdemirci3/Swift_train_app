//
//  ContentView.swift
//  Deneme-proje
//
//  Created by Barış Demirci on 4.04.2024.
//

import SwiftUI


struct ContentView: View {
    @State private var username: String = ""
        @State private var password: String = ""
        @State private var isLoggedIn: Bool = false
    @State private var showingAlert: Bool = false
        
        var body: some View {
            ZStack{
                Rectangle().fill(Color.blue).frame(width: 500).rotationEffect(.degrees(11))
                Text("Kayıt Ol").font(.system(size: 70, design: .rounded).bold()).foregroundColor(.white)
            }
            VStack {
                Spacer()
                VStack(spacing: 20){
                    TextField("Kullanıcı Adı", text: $username)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                        .padding(.bottom, 20)
                    
                    SecureField("Şifre", text: $password)
                        .padding()
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(8)
                        .padding(.bottom, 20)
                    
                    Button(action: {
                        // Burada giriş işlemleri yapılabilir
                        // Örnek olarak, kullanıcı adı ve şifreyi kontrol edip isLoggedIn değerini güncelleyebilirsiniz
                        isLoggedIn = (username == "kullanici" && password == "sifre")
                    }) {
                        Text("Giriş Yap")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(8)
                    }
                }
                
                if isLoggedIn {
                    Text("Giriş Başarılı!")
                        .foregroundColor(.green)
                        .padding(.top, 20)
                }
                
               
            }
            .padding()
            Text("Henüz bir hesabın yok mu?")
            
        }
    }

#Preview {
    ContentView()
}
