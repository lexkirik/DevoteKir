//
//  DevoteKirApp.swift
//  DevoteKir
//
//  Created by Test on 26.09.23.
//

import SwiftUI

@main
struct DevoteKirApp: App {
    let persistenceController = PersistenceController.shared

    @AppStorage("isDarkMode") var isDarkMode: Bool = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
