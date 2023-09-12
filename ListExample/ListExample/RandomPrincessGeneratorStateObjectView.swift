//
//  RandomPrincessGeneratorStateObjectView.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/12/23.
//

import SwiftUI

struct RandomPrincessGeneratorStateObjectView: View {
    @ObservedObject var randomGenerator: RandomGenerator
    @State private var path = [Princess]()
    
    var body: some View {
        NavigationStack(path: $path) {
            List(randomGenerator.list) { princess in
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
                    randomGenerator.generateRandomPrincess()
                    guard let princess = randomGenerator.selectedPrincess else { return }
                    path.append(princess)
                }
            }
//            .sheet(item: $randomGenerator.selectedPrincess) { princess in
//                PrincessDetailView(princess: princess)
//            }
            .navigationDestination(for: Princess.self) { princess in
                PrincessDetailView(princess: princess)
                    .navigationTitle(princess.name)
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct RandomPrincessGeneratorStateObjectView_Previews: PreviewProvider {
    static var previews: some View {
        RandomPrincessGeneratorStateObjectView(randomGenerator: RandomGenerator(list: Princess.list()))
    }
}
