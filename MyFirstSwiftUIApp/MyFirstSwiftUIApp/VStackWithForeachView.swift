//
//  VStackWithForeachView.swift
//  MyFirstSwiftUIApp
//
//  Created by John Joseph Aguado on 9/7/23.
//

import SwiftUI

struct VStackWithForeachView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 10) {
                ForEach(1...50, id: \.self) {
                    Text("Item \($0)")
                        .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .borderedCaption()
            .padding()
        }
    }
}

struct VStackWithForeachView_Previews: PreviewProvider {
    static var previews: some View {
        VStackWithForeachView()
    }
}
