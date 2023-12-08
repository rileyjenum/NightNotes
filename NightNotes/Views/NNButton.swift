//
//  NNButton.swift
//  NightNotes
//
//  Created by Riley Jenum on 12/8/23.
//

import SwiftUI

struct NNButton: View {
    // properties to allow for changes in name of button, background/foreground color and action
    let title: String
    let background: Color
    let foreground: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(foreground)
                    .bold()
            }
        }
    }
}



struct NNButton_Previews: PreviewProvider {
    static var previews: some View {
        NNButton(title: "Title",
                   background: Color.blue,
                 foreground: Color.white) {
            
        }
    }
}
