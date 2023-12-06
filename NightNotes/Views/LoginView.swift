//
//  LoginView.swift
//  NightNotes
//
//  Created by Riley Jenum on 12/4/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        ZStack {
            Image("LoginInspo4")
                .resizable(resizingMode: .stretch)
                .padding(.all, -63.0)
            VStack {
                //Header
                Spacer()
                HeaderView()

                Spacer()
                    .padding(.bottom, 5.0)
                    

                //Login Form
                Form {
                    TextField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Email Address", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                .scrollContentBackground(.hidden)

                Spacer()
                    
                
                

                
                //Create Account
        }
            
                
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

