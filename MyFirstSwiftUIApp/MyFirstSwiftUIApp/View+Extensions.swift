//
//  BorderedCaption+Extensions.swift
//  MyFirstSwiftUIApp
//
//  Created by John Joseph Aguado on 9/5/23.
//

import Foundation
import SwiftUI

extension View {
    func borderedCaption() -> some View {
        modifier(BorderedCaption())
    }
}
