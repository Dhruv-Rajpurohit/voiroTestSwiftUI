//
//  Movie.swift
//  SwiftUIDemo
//
//  Created by Dhruv Rajpurohit on 30/04/22.
//

import Foundation

struct MovieResponse: Decodable {
    let results : [Movie]
}

struct Movie: Decodable{
    let id: Int
    let title: String
    let backdropPath: String?
    let posterPath: String?
    let overview: String
    let voteAverage: Double
    let voteCount: Int
    let runtime: Int?
}
