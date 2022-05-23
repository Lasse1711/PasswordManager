//
//  PasswordReviewView.swift
//  PasswordManager
//
//  Created by Lasse von Pfeil on 19.05.22.
//

import SwiftUI

struct PasswordReviewView: View {
    
    @State var password_var: String = ""
    @State var website_var: String = ""
    
    
    var body: some View {
        VStack {
            Text("Password:   \(password_var)")
                .font(.title)
                .fontWeight(.bold)
                .position(x: 190, y: 180)
            Text("Website:   \(website_var)")
                .font(.title)
                .fontWeight(.bold)
                .position(x: 190, y: -50)
        }
    }
}

struct PasswordReviewView_Previews: PreviewProvider {
    static var previews: some View {
        PasswordReviewView(password_var: "", website_var: "")
    }
}
