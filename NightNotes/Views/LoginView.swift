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
        NavigationView {
            ZStack {
                Image("LoginInspo4")
                    .resizable(resizingMode: .stretch)
                    .padding(.all, -63.0)
                VStack {
                    //Header

                    HeaderView(title: "NightNotes",
                               subtitle: "Track your sleep")
                    .padding(.top, 41.0)
                    Spacer()
                    //Login Form
                    VStack {
                        TextField("Email Address", text: $email)
                            .frame(width: 250.0)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .multilineTextAlignment(.center)
                            .cornerRadius(50)
                        SecureField("Password", text: $password)
                            .frame(width: 250.0)
                            .cornerRadius(50)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .multilineTextAlignment(.center)
                        Button {
                            // Attempt login
                        } label: {
                            ZStack {
                                RoundedRectangle(cornerRadius: 50)
                                    .frame(width: 150.0, height: 30.0)
                                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                Text("Login")
                                    .foregroundColor(.white)
                                    .bold()
                            }
                        }
                    }
                    .textFieldStyle(.roundedBorder)
                    
                    Spacer()
                    //Create Account
                    
                    Text("Don't have an account?")
                        .foregroundColor(Color.white)
                    
                    NavigationLink("Create Account", destination: RegisterView())
            }
                
                    
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

