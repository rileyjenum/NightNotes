//
//  TestView.swift
//  NightNotes
//
//  Created by Riley Jenum on 12/8/23.
//

import SwiftUI


//Create Login and Register view structure

struct LoginRegisterView: View {
    
    //Namespace to make animations with Matched Geometry effect
    @Namespace private var namespace
    //Bool initialized to false to keep track of whether the register page is open or not
    @State private var isExpanded: Bool = false
    //Login and register information variables
    @State private var registeremail: String = ""
    @State private var registerpassword: String = ""
    @State private var loginemail: String = ""
    @State private var loginpassword: String = ""

    
    //Main body of app
    var body: some View {
        ZStack {
            
            
            loginContent
            // blur out content in background if register view is expanded
                .blur(radius: isExpanded ? 20: 0)
            
            
            VStack {
                
                
                if isExpanded {
                    Button(action: {
                        withAnimation(.easeInOut(duration: 1)) {
                            isExpanded = false
                        }
                    }) {
                        Image(systemName: "arrow.down.circle.fill") // arrow to collapse registration view
                            .foregroundColor(.blue)
                            .frame(width: 20.0, height: 20.0)
                    }
                    .padding(.top, 40)
                    
                    
                    // Registration view
                    VStack {
                        Text("Start tracking now")
                            .font(.title)
                            .bold()
                            .padding()
                        
                        // Registration form fields
                        TextField("Email", text: $registeremail)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.black)
                            .padding()
                        
                        SecureField("Password", text: $registerpassword)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .foregroundColor(.black)
                            .padding()
                        
                        Button("Submit", action: {
                            // Handle form submission
                        })
                        .padding()
                        Spacer()
                    }
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.blue)
                    .cornerRadius(30)
                    .edgesIgnoringSafeArea(.all)
                    .matchedGeometryEffect(id: "button", in: namespace)
                    
                    
                    // initial state when registration is collapsed and login content is shown
                } else {
                    // Push button to bottom of page
                    Spacer()
                    
                    Button(action: {
                        withAnimation(.easeInOut(duration: 1)) {
                            isExpanded = true
                        }
                    }) {
                        Text("Register")
                            .foregroundColor(.white)
                            .frame(width: 150, height: 30)
                            .background(Color.blue)
                            .cornerRadius(30)
                    }
                    .matchedGeometryEffect(id: "button", in: namespace)
                }
            }
        }
    }
    
    
    
    // Separate ViewBuilder for the login content to keep code cleaner
    @ViewBuilder
    private var loginContent: some View {

        Image("LoginInspo4")
            .resizable(resizingMode: .stretch)
            .padding(.all, -63.0)

        VStack {
            HeaderView(title: "NightNotes", subtitle: "Track your sleep", font: "Delicious Handrawn")
                .padding(.top, 41.0)

            Spacer()

            VStack {
                TextField("Email Address", text: $loginemail)
                    .frame(width: 250.0)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.center)
                    .cornerRadius(50)
                SecureField("Password", text: $loginpassword)
                    .frame(width: 250.0)
                    .cornerRadius(50)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.center)
                NNButton(title: "Login",
                            background: Color.blue,
                            foreground: Color.white) {
                    //Attempt Login (to be completed)
                }
                .frame(width: 150, height: 30)
            }

            Spacer()
            
            
            Text("Don't have an account?")
                .foregroundColor(Color.white)
                .padding(.bottom, 35.0)
        }
    }
}

struct LoginRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        LoginRegisterView()
    }
}
