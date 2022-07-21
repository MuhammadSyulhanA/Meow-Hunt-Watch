//
//  Meow_Hunt_WatchApp.swift
//  Meow Hunt Watch WatchKit Extension
//
//  Created by M. Syulhan Al Ghofany on 15/07/22.
//

import SwiftUI

@main
struct Meow_Hunt_WatchApp: App {
    
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                OnboardingView()
//                    .environment(\.managedObjectContext, dataController.container.viewContext)
//                TimerView(lapTiming: .init(0), playingActivityOut: .constant(nil), playingActivityIn: .constant(nil))
            }.environment(\.managedObjectContext, PersistentController.shared.container.viewContext)
            
        }
    }
}
