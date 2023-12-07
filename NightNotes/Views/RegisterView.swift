//
//  RegisterView.swift
//  NightNotes
//
//  Created by Riley Jenum on 12/4/23.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        ZStack {
            Image("LoginInspo4")
                .resizable(resizingMode: .stretch)
                .padding(.all, -62.0)
            VStack {
                
                HeaderView(title: "Register",
                           subtitle: "Start tracking now")
                .padding(.top, 62.0)
                
                Spacer()
                    
                    
                
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
