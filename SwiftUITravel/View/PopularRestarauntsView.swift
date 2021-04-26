//
//  PopularRestarauntsView.swift
//  SwiftUITravel
//
//  Created by Richard Price on 26/04/2021.
//

import SwiftUI

struct PopularRestarauntsView: View {
    let restaraunts: [Restaurants] = [
        .init(name: "Japan's Finest Tapas", imageName: "tapas"),
        .init(name: "Bar & Grill", imageName: "bar_grill"),
    
    ]
    var body: some View {
        VStack {
            HStack {
                Text("Popular places to eat")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                    Text("See all")
                    .font(.system(size: 12, weight: .semibold))
            }
        }.padding(.horizontal)
        .padding(.top)

        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(restaraunts, id: \.self) { restaraunt in
                        Spacer()
                    HStack(spacing: 8) {
                        Image(restaraunt.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                                .clipped()
                            .padding(.leading, 6)
                            .padding(.vertical, 6)
                        VStack(alignment: .leading, spacing: 6) {
                            HStack {
                                Text(restaraunt.name)
                                    .font(.system(size: 11, weight: .semibold))
                                Spacer()
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    Image(systemName: "ellipsis")
                                        .foregroundColor(.gray)
                                })
                            }
                            HStack {
                                Image(systemName: "star.fill")
                                    .font(.system(size: 12, weight: .semibold))
                                Text("4.7 - Sushi - $$")
                                    .font(.system(size: 12, weight: .semibold))
                            }

                            Text("Tokyo, Japan")
                                .font(.system(size: 12, weight: .semibold))
                        }
                        Spacer()
                    }
                            .frame(width: 240)
                            .background(Color.white)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct PopularRestarauntsView_Previews: PreviewProvider {
    static var previews: some View {
        PopularRestarauntsView()
    }
}
