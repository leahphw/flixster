//
//  Movie.swift
//  w2-flixster
//
//  Created by Phuong Anh Le on 3/12/23.
//

import Foundation

struct Movie: Decodable {
    let backdrop_path: String
    let id: Int
    let original_title: String
    let overview: String
    let popularity: Double
    let poster_path: String
    let vote_average: Double
    let vote_count: Int
}

struct MoviesResponse: Decodable {
    let results: [Movie]
}
