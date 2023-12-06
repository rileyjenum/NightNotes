//
//  NightNotesApp.swift
//  NightNotes
//
//  Created by Riley Jenum on 12/1/23.
//

import SwiftUI
import SwiftData
import FirebaseCore

@main
struct NightNotesApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
