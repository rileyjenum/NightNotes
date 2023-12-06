//
//  ContentView.swift
//  NightNotes
//
//  Created by Riley Jenum on 12/1/23.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        }
    }

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
