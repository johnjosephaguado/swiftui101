//
//  ListExampleApp.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/7/23.
//

import SwiftUI

@main
struct ListExampleApp: App {
    // Single source of truth
    // Views @State = childView (@Binding)
    // Data / Models / Objects @StateObject: childView (@ObservedObject)
    
    @StateObject var randomGenerator = RandomGenerator(list: Princess.list())
    @StateObject var user = User()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
//            DynamicListView(princesses: princesses)
//            RandomPrincessGeneratorStateView(princesses: princesses)
//            RandomPrincessGeneratorStateObjectView(randomGenerator: randomGenerator)
                .environmentObject(user)
        }
    }
}
