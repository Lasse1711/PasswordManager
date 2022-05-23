//
//  MainScreen.swift
//  PasswordManager
//
//  Created by Lasse von Pfeil on 15.05.22.
//

import SwiftUI

struct MainScreen: View {
    
    @State var sheetIsPresented: Bool = false
    @State var countPassword: Int = 0
    @State var password: String = ""
    @State var website: String = ""
    @State var passwordSubmit: String = ""
    @State var websiteSubmit: String = ""
    
    var body: some View {
        NavigationView {
            List(0..<countPassword, id: \.self) { password in
                NavigationLink(destination: PasswordReviewView(password_var: passwordSubmit, website_var: websiteSubmit)) {
                    PasswordView(website: websiteSubmit, password: passwordSubmit)
                }
            }
            .navigationTitle("Passwörter")
            .navigationBarItems(trailing: Button(action: {
                sheetIsPresented.toggle()
            }, label: {
                Image(systemName: "square.and.pencil")
            }))
        }
        .sheet(isPresented: $sheetIsPresented, content: {
            Text("New Password")
                .font(.title)
                .fontWeight(.bold)
                .position(x: 190, y: 50)
            
            TextField(
                "New Password",
                text: $password
            )
            .textFieldStyle(.roundedBorder)
            .frame(width: 300)
            .position(x: 190, y: 50)
            .disableAutocorrection(true)
            .autocapitalization(.none)
            .onChange(of: password) { newPassword in
                passwordSubmit = password
            }
            
            TextField("Website", text: $website)
                .textFieldStyle(.roundedBorder)
                .frame(width: 300)
                .position(x: 190, y: -10)
                .disableAutocorrection(true)
                .autocapitalization(.none)
                .onChange(of: website) { newWebsite in
                    websiteSubmit = website
                }
            
            
            Button(action: {
                countPassword += 1
            }, label: {
                Image(systemName: "arrow.up.circle.fill")
                    .resizable()
                    .frame(width: 60, height: 60)
                    .padding()
            })
        })
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
