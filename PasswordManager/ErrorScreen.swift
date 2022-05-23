//
//  ErrorScreen.swift
//  PasswordManager
//
//  Created by Lasse von Pfeil on 15.05.22.
//

import SwiftUI

struct ErrorScreen: View {
    var body: some View {
        Text("Something went wrong!")
            .fontWeight(.heavy)
            .padding()
            .foregroundColor(.red)
            .font(.system(size: 30))
        
        Text("Please restart the app to login again!")
            .fontWeight(.heavy)
            .padding()
            .font(.system(size: 10))
            .foregroundColor(.gray)
    }
}

struct ErrorScreen_Previews: PreviewProvider {
    static var previews: some View {
        ErrorScreen()
    }
}
