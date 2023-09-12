//
//  RandomGenerator.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/12/23.
//

import Foundation

class RandomGenerator: ObservableObject {
    
    init(list: [Princess], selectedPrincess: Princess? = nil) {
        self.list = list
        self.selectedPrincess = selectedPrincess
    }
    
    let list: [Princess]
    @Published var selectedPrincess: Princess?
    
    func generateRandomPrincess() {
        let selectedIndex = Int.random(in: 0..<list.count)
        selectedPrincess = list[selectedIndex]
    }
}
