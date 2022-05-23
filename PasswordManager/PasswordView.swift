//
//  PasswordView.swift
//  PasswordManager
//
//  Created by Lasse von Pfeil on 16.05.22.
//

import SwiftUI

struct PasswordView: View {
    @State var website: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Text(password)
                .font(.title2)
                .fontWeight(.bold)
            
            Text(website)
                .foregroundColor(.gray)
        }
    }
}

struct PasswordView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordView(website: "", password: "")
    }
}
