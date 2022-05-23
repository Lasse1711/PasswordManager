//
//  ContentView.swift
//  PasswordManager
//
//  Created by Lasse von Pfeil on 14.05.22.
//

import SwiftUI
import LocalAuthentication


struct ContentView: View {
    
    @State var isUnlocked = false
    
    
    func authenticate() {
        let context = LAContext()
        var error: NSError?
        
        @State var showErrorAlert = false
        
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
               // it's possible, so go ahead and use it
               let reason = "We need to unlock your data."

               context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                   // authentication has now completed
                   if success {
                       // authenticated successfully
                       isUnlocked = true
                   } else {
                       print("ERROR")
                   }
               }
           } else {
               print("ERROR")
           }
    }
    
    
    
    var body: some View {
        VStack {
            if isUnlocked {
                MainScreen()
            } else {
                ErrorScreen()
            }
        }
        .onAppear(perform: authenticate)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
