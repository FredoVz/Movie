//
//  DetailFilmView.swift
//  Movie
//
//  Created by Wilfredo Sutanto on 23/12/21.
//

import SwiftUI

struct DetailFilmView: View {
    
    @StateObject private var movieListVM = MovieListViewModel()
    @State private var searchText: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                Image("download").resizable().frame(width: UIScreen.main.bounds.width, height: 300)
                
                HStack {
                    Image(systemName: "calendar").font(.system(size: 30))
                    
                    Text("22 Juli 2011").font(.system(size: 30))
                Spacer()
                }.padding()
                
                HStack {
                    Image(systemName: "timer").font(.system(size: 30))
                    
                    Text("124 min").font(.system(size: 30))
                    Spacer()
                }.padding()
                
                HStack {
                    Image(systemName: "star").font(.system(size: 30))
                    
                    Text("6.9").font(.system(size: 30))
                    Spacer()
                }.padding()
                
                Text("Steve Rogers, a rejected millitary soldier, transform into Captain America after taking a dose of a Super Soldier serum. But being Captain America comes at a price as he attempts to take down a war monger and a terrorist organization").padding()
                
                HStack {
                    Text("Genre").padding(.horizontal)
                    
                    Text("Action, Adventure, Sci-Fi").padding(.horizontal)
                    Spacer()
                }.padding()
                
                HStack {
                    Text("Director").padding(.horizontal)
                    
                    Text("Joe Johnston").padding(.horizontal)
                    Spacer()
                }.padding()
                
                HStack {
                    Text("Actors").padding(.horizontal)
                    
                    Text("Chris Evans, Hayley Atwell").padding(.horizontal)
                    Spacer()
                }.padding()
            }
        }
    }
}

struct DetailFilmView_Previews: PreviewProvider {
    static var previews: some View {
        DetailFilmView()
    }
}
