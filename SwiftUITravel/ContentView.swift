//
//  ContentView.swift
//  SwiftUITravel
//
//  Created by Richard Price on 21/04/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //Step 1 create a NavView, scrollView, Hstack with frames and spacers
        NavigationView {
            // everything will be a scrollable view then a HStack Scroll view at the top
            //use a foreach if creating more than one object
            ScrollView {
                DiscoverCategoriesView()
            }.navigationTitle("Discover")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
//extract to subview once code typed, or just create this View from the start
struct DiscoverCategoriesView: View {
    var body: some View {
        //step 2 put everything inside a Horizontal scroll view
        //showsIndicators turns off the ugly scrollbar
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(0..<5, id: \.self) { num in
                    //step to add text underneath your circles
                    //use a Vstack
                    VStack {
                        Spacer()
                            .frame(width: 50, height: 50)
                            .background(Color.gray)
                            .cornerRadius(.infinity) //infinity makes a full circle
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                        Text("Art")
                            .font(.system(size: 12, weight: .semibold))
                    }
                }
            }//step 3 add some padding to HStack, use a background color for debugging
            //.background(Color.red)
            .padding(.horizontal)
        }
    }
}
