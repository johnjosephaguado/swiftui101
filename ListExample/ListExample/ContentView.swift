//
//  ContentView.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
        .padding()
        .refreshable {
            print("")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
