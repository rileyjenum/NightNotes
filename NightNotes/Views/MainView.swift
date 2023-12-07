//
//  ContentView.swift
//  NightNotes
//
//  Created by Riley Jenum on 12/1/23.
//

import SwiftUI
import SwiftData

struct MainView: View {
    var body: some View {
        // NavigationView instead of Vstack allows to show and dismiss registration view (if needed)
            LoginView()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
