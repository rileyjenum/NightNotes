//
//  HeaderView.swift
//  NightNotes
//
//  Created by Riley Jenum on 12/6/23.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    
    var body: some View {
        VStack {
            Text(title)
            // Font names have specific names that are not just the name you gave when uploading
                .font(.custom("Delicious Handrawn", size: 70))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .bold()
            Text(subtitle)
                .font(.custom("Delicious Handrawn", size: 25))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title",
                   subtitle: "Subtitle")
    }
}
