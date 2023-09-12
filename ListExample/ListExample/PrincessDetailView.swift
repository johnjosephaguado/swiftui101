//
//  PrincessDetailView.swift
//  ListExample
//
//  Created by John Joseph Aguado on 9/7/23.
//

import SwiftUI

struct PrincessDetailView: View {
    @SwiftUI.Environment(\.dismiss) var dismiss
    var princess: Princess
    @EnvironmentObject var user: User
    
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
                    Text("\(princess.name), released \(String(princess.yearReleased)) \(user.userName)")
                        .font(.title)
                        .padding(.bottom, 10)
                        .background(.white)
                    Text("The plot: \(princess.story)")
                        .font(.subheadline)
                }
                .background(.white)
                .padding()
                
                Button("close") {
                    dismiss()
                }
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
