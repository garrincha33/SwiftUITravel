//
//  TileModifier.swift
//  SwiftUITravel
//
//  Created by Richard Price on 26/04/2021.
//

import SwiftUI

//step4 create an extension of View and create a function for the tile mod
extension View {
    func asTile() -> some View {
        modifier(TileModifier())
    }
}

//step 1 create a custom modifer
struct TileModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(Color.white)
            .cornerRadius(5)
            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
    }
}
