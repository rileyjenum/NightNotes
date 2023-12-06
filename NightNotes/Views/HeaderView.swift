//
//  HeaderView.swift
//  NightNotes
//
//  Created by Riley Jenum on 12/6/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            Text("NightNotes")
            // Font names have specific names that are not just the name you gave when uploading
                .font(.custom("Delicious Handrawn", size: 70))
                .foregroundColor(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .bold()
            Text("Track your sleep")
                .font(.custom("Delicious Handrawn", size: 25))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
        }

    }
}

#Preview {
    HeaderView()
}
