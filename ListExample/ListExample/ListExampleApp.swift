//
//  ListExampleApp.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/7/23.
//

import SwiftUI

@main
struct ListExampleApp: App {
    var princesses = Princess.list()
    
    var body: some Scene {
        WindowGroup {
//            ContentView()
            DynamicListView(princesses: princesses)
        }
    }
}
