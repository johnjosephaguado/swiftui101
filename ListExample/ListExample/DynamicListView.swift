//
//  DynamicListView.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/7/23.
//

import SwiftUI

struct DynamicListView: View {
    var princesses: [Princess]
    @State private var showAlert: Bool = false
    
    var body: some View {
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
                Button("Show Alert") {
                    showAlert.toggle()
                }
            }
            .alert("Alert title", isPresented: $showAlert) {
                Button("ok") {
                    print("prints ok")
                }
            }
        }
    }
}

struct DynamicListView_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListView(princesses: Princess.list())
    }
}
