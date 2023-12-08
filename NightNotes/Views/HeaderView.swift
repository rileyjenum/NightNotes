//
//  HeaderView.swift
//  NightNotes
//
//  Created by Riley Jenum on 12/6/23.
//

import SwiftUI

struct HeaderView: View {
    //properties to allow for title and subtitle changes in a generic header
    let title: String
    let subtitle: String
    let font: String
    
    var body: some View {
        VStack {
            Text(title)
            // Reminder: Font names have specific names that are not just the name you gave when uploading
                .font(.custom(font, size: 90))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .bold()
            Text(subtitle)
                .font(.custom(font, size: 35))
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(title: "Title",
                   subtitle: "Subtitle",
                   font: "Delicious Handrawn")
    }
}
