//
//  ZstackExample.swift
//  MyFirstSwiftUIApp
//
//  Created by John Joseph Aguado on 9/7/23.
//

import SwiftUI

struct ZstackExample: View {
    var body: some View {
        ZStack {
            Color.green
            
            VStackWithForeachView()
            
            Button("hello") {
                
            }
            .frame(width: 100, height: 100)
            .background(.red)
            
            Text("Hello world")
        }
        .ignoresSafeArea()
    }
}

struct ZstackExample_Previews: PreviewProvider {
    static var previews: some View {
        ZstackExample()
    }
}
