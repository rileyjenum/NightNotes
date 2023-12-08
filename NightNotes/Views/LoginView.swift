//
//  LoginView.swift
//  NightNotes
//
//  Created by Riley Jenum on 12/4/23.
//

import SwiftUI

struct LoginView: View {
    @Namespace private var animationNamespace
    @State var email = ""
    @State var password = ""
    @State private var showRegisterView = false

    var body: some View {
        NavigationView {
            ZStack {
                loginContent
                    .blur(radius: showRegisterView ? 20: 0)
                
                if showRegisterView {
                    RegisterView(namespace: animationNamespace, isPresented: $showRegisterView)
                        .zIndex(1) // Ensure it overlays on top
                
                
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }

    @ViewBuilder
    private var loginContent: some View {
        // Your existing login view content
        Image("LoginInspo4")
            .resizable(resizingMode: .stretch)
            .padding(.all, -63.0)

        VStack {
            HeaderView(title: "NightNotes", subtitle: "Track your sleep")
                .padding(.top, 41.0)

            Spacer()

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
                NNButton(title: "Login",
                            background: Color.blue,
                            foreground: Color.white) {
                    //Attempt Login
                }
                            .frame(width: 150, height: 30)
            }

            Spacer()
            
            
            Text("Don't have an account?")
                .foregroundColor(Color.white)
                .padding(.bottom, 11.0)
            
            // Register Button
            Button(action: {
                withAnimation(.easeInOut(duration: 0.5)) {
                    showRegisterView = true
                }
            }) {
                Text("Register")
                    .frame(width: 150, height: 30)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .matchedGeometryEffect(id: "registerButton", in: animationNamespace)
            .padding(.bottom,50)
        }
    }
}

struct RegisterView: View {
    var namespace: Namespace.ID
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                withAnimation(.easeInOut(duration: 0.5)) {
                    isPresented = false
                }
            }) {
                Image(systemName: "arrow.down")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
            }
            .padding()
            Spacer()
            
            
            
            
        }
        .matchedGeometryEffect(id: "registerButton", in: namespace)
        .frame(width: UIScreen.main.bounds.width * 0.95, height: UIScreen.main.bounds.height * 0.9)
        .background(Color.purple)
        .foregroundColor(.white)
        .cornerRadius(30)
        .zIndex(1)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
