//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Yanina Kovrakh on 11.04.2024.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

struct ListCellImageStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 120, height: 90)
            .aspectRatio(contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 8))
    }
}
