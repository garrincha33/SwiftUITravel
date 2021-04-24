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
struct Category: Hashable {
    let name, imageName: String
}

struct DiscoverCategoriesView: View {
    let categories: [Category] = [
        .init(name: "Art", imageName: "paintpalette.fill"),
        .init(name: "Sport", imageName: "sportscourt.fill"),
        .init(name: "Live Events", imageName: "music.mic"),
        .init(name: "Food", imageName: "music.mic"),
        .init(name: "History", imageName: "music.mic")]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 12) {
                ForEach(categories, id: \.self) { category in
                    VStack(spacing: 8) {
                        Image(systemName: category.imageName)
                            .foregroundColor(Color.white)
                            .frame(width: 64, height: 64)
                            .background(Color.gray)
                            .cornerRadius(34)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                        Text(category.name)
                            .font(.system(size: 14))
                            .font(.system(size: 12, weight: .semibold))
                            .multilineTextAlignment(.center)
                    }.frame(width: 64)
                }
            }
            .padding(.horizontal)
        }
    }
}
struct Destination: Hashable {
    let name, country, imageName: String
}
struct PopularDestinationsView: View {
    let destinations: [Destination] = [
        .init(name: "Paris", country: "France", imageName: "eiffel_tower"),
        .init(name: "Tokyo", country: "Japan", imageName: "japan"),
        .init(name: "New York", country: "US", imageName: "new_york")
    ]
    
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
                ForEach(destinations, id: \.self) { destination in
                    VStack(alignment: .leading, spacing: 0) {
                        Image(destination.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 125, height: 125)
                            .cornerRadius(5)
                            .padding(.horizontal, 6)
                            .padding(.vertical, 6)

                        Text(destination.name)
                            .font(.system(size: 12, weight: .semibold))
                            .padding(.horizontal, 12)
                        Text(destination.country)
                            .font(.system(size: 12, weight: .semibold))
                            .padding(.horizontal, 12)
                            .padding(.bottom, 8)
                            .foregroundColor(.gray)
                    }
                            .background(Color(.init(white: 0.9, alpha: 1)))
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                }
            }
            .padding(.horizontal)
        }
    }
}

//step 1 create another hasable struct
struct Restaurants: Hashable {
    let name, imageName: String
}

struct PopularRestarauntsView: View {
    //step 2
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
                    //step 3 add hstack inside existing hstack scroll view
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
                            .background(Color(.init(white: 0.9, alpha: 1)))
                            .cornerRadius(5)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .padding(.bottom)
                }
            }
            .padding(.horizontal)
        }
    }
}

//step 4 create a hasbable user struct
struct Users: Hashable {
    let name, imageName: String
}

struct TrendingCreatorsView: View {
    //step 5 use the user
    let users: [Users] = [
        .init(name: "Amy Adams", imageName: "amy"),
        .init(name: "Billy", imageName: "billy"),
        .init(name: "Sam Smith", imageName: "sam")
    
    ]
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
        //adding .top here pushes images up, .top only available for hstack and zstack
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 12) {
                ForEach(users, id: \.self) { user in
                    VStack() {
                        Image(user.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 60, height: 60)
                            .cornerRadius(60)
                        Text(user.name)
                            .font(.system(size: 14))
                            .multilineTextAlignment(.center)
                            
                    }
                    .frame(width: 60)
                            .shadow(color: .gray, radius: 4, x: 0.0, y: 2)
                            .font(.system(size: 12, weight: .semibold))
                            .padding(.bottom)
                }
            }
            .padding(.horizontal)
        }
    }
}

