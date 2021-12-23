//
//  MainView.swift
//  Movie
//
//  Created by Wilfredo Sutanto on 23/12/21.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var movieListVM = MovieListViewModel()
    @State private var searchText: String = ""
    
    init () {
        UINavigationBar.appearance().backgroundColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        
        UINavigationBar.appearance().barTintColor = #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    var body: some View {
        NavigationView {
            List(movieListVM.movies, id: \.imdbId) { movie in
                HStack {
                    AsyncImage(url: movie.poster
                               , content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: 100)
                    }, placeholder: {
                        ProgressView()
                    })
                    VStack {
                        HStack {
                            Text(movie.title).padding(.bottom,10)
                            Spacer()
                        }
                        
                        
                        HStack {
                            Text(movie.year)
                            Spacer()
                        }
                    }
                }
            }.listStyle(.plain)
                .searchable(text: $searchText)
                .onChange(of: searchText) { value in
                    async {
                        if !value.isEmpty &&  value.count > 3 {
                            await movieListVM.search(name: value)
                        } else {
                            movieListVM.movies.removeAll()
                        }
                    }
                }
            
                .navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
