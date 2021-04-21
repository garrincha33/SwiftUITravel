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
            ScrollView {
                DiscoverCategoriesView()
                //step 1 create 3 new views (amend spacing for Vstack to 8 in DiscoverView)
                PopularDestinationsView()
                PopularRestarauntsView()
                TrendingCreatorsView()
            }.navigationTitle("Discover")
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//step 3 create a new struct to contain cateogires
struct Category: Hashable {
    let name, imageName: String
}

struct DiscoverCategoriesView: View {
    //step 4 create a local array for storing objects
    let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "music.mic"),
        .init(name: "History", imageName: "music.mic")]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 12) {
                //step 5 plug in your categories
                ForEach(categories, id: \.self) { category in
                    VStack(spacing: 8) {
                        Image(systemName: category.imageName)
                            //step 6 add forground color and change from inifinty to 25
                            .foregroundColor(Color.white)
                            .frame(width: 64, height: 64)
                            .background(Color.gray)
                            .cornerRadius(34)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                        Text(category.name)//step 6 udpate internals
                            .font(.system(size: 14))
                            .font(.system(size: 12, weight: .semibold))
                            .multilineTextAlignment(.center)
                    }.frame(width: 64)//step 7 add a frame for equal spacing
                }
            }
            .padding(.horizontal)
        }
    }
}
//step 2 copy destinations view above and amend accordingly
struct PopularDestinationsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Popular destinations")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                    Text("See all")
                    .font(.system(size: 12, weight: .semibold))
            }
        }.padding(.horizontal)
        .padding(.top)
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8.0) {
                ForEach(0..<5, id: \.self) { num in
                        Spacer()
                            .frame(width: 125, height: 150)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct PopularRestarauntsView: View {
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
            HStack(spacing: 8.0) {
                ForEach(0..<5, id: \.self) { num in
                        Spacer()
                            .frame(width: 200, height: 64)
                            .background(Color.gray)
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct TrendingCreatorsView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Trending Creators")
                    .font(.system(size: 14, weight: .semibold))
                Spacer()
                    Text("See all")
                    .font(.system(size: 12, weight: .semibold))
            }
        }.padding(.horizontal)
        .padding(.top)

        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 8.0) {
                ForEach(0..<15, id: \.self) { num in
                        Spacer()
                            .frame(width: 50, height: 50)
                            .background(Color.gray)
                            .cornerRadius(.infinity)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .font(.system(size: 12, weight: .semibold))
                            .padding(.bottom)
                }
            }
            .padding(.horizontal)
        }
    }
}

