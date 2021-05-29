//
//  MoviesListModel.swift
//  Assignment
//
//  Created by Aniket Prakash on 29/05/21.
//

import Foundation

struct MoviesListModel: Codable {
    let original_title: String?
    let poster_path: String?
    let vote_average: Float?
    let adult: Bool?
    let original_language: String?
    let release_date: String?
}
