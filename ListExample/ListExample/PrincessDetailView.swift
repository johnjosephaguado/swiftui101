//
//  PrincessDetailView.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/7/23.
//

import SwiftUI

struct PrincessDetailView: View {
    var princess: Princess
    
    var body: some View {
        ZStack {
            Color.pink
            
            VStack {
                AsyncImage(url: URL(string: princess.imageUrl)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 300, maxHeight: 300)
                } placeholder: {
                    ProgressView()
                }
                .padding(.vertical, 10)
                
                VStack(alignment: .leading) {
                    Text("\(princess.name), released \(String(princess.yearReleased))")
                        .font(.title)
                        .padding(.bottom, 10)
                        .background(.white)
                    Text("The plot: \(princess.story)")
                        .font(.subheadline)
                }
                .background(.white)
                .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .ignoresSafeArea()
    }
}

struct PrincessDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PrincessDetailView(princess: Princess.list().first!)
    }
}
