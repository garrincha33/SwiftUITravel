//
//  ContentView.swift
//  SwiftUITravel
//
//  Created by Richard Price on 21/04/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello, world and test!")
                .padding()
                .navigationTitle("Loading")
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
