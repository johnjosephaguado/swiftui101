//
//  BorderedCaption.swift
//  MyFirstSwiftUIApp
//
//  Created by John Joseph Aguado on 9/5/23.
//

import Foundation
import SwiftUI

struct BorderedCaption: ViewModifier {
    var foregroundColor = Color.blue
    
    func body(content: Content) -> some View {
        content
            .font(.caption2)
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 15.0)
                    .stroke(lineWidth: 1)
            )
            .foregroundColor(foregroundColor)
    }
}
