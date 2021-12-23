//
//  Movie.swift
//  Movie
//
//  Created by Wilfredo Sutanto on 23/12/21.
//

import Foundation

struct MovieResponse: Decodable {
    let movies: [Movie]
    
    private enum CodingKeys: String, CodingKey {
        case movies = "Search"
    }
}

struct Movie: Decodable {
    let imdbID: String
    let title: String
    let year: String
    let poster: String

    
    private enum CodingKeys: String, CodingKey {
        case imdbID = "imdbID"
        case title = "Title"
        case year = "Year"
        case poster = "Poster"
    }
    
}
