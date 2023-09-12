//
//  RandomPrincessGeneratorStateView.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/12/23.
//

import SwiftUI

struct RandomPrincessGeneratorStateView: View {
    var princesses: [Princess]
    @State private var isSelected: Bool = false
    @State private var selectedIndex = 0
    
    var body: some View {
        TestView(selectedIndex: $selectedIndex)
        
        NavigationStack {
            List(princesses) { princess in
                NavigationLink {
                    PrincessDetailView(princess: princess)
                        .navigationTitle(princess.name)
                        .navigationBarTitleDisplayMode(.inline)
                } label: {
                    Text(princess.name)
                }
            }
            .navigationTitle("Princesses")
            .navigationBarTitleDisplayMode(.large)
            .toolbar {
                Button("Random") {
                    selectedIndex = Int.random(in: 0..<princesses.count)
                    isSelected.toggle()
                }
            }
//            .fullScreenCover(isPresented: $isSelected) {
//                PrincessDetailView(princess: princesses[selectedIndex])
//            }
            .sheet(isPresented: $isSelected) {
                PrincessDetailView(princess: princesses[selectedIndex])
            }
        }
    }
}

struct TestView: View {
    @Binding var selectedIndex: Int
    
    var body: some View {
        Text("Test \(selectedIndex)")
    }
}

struct RandomPrincessGeneratorStateView_Previews: PreviewProvider {
    static var previews: some View {
        RandomPrincessGeneratorStateView(princesses: Princess.list())
    }
}
