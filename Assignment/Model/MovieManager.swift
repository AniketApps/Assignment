//
//  MovieManager.swift
//  Assignment
//
//  Created by Aniket Prakash on 29/05/21.
//

import Foundation

struct MovieManager {
    let movieJson = "movies"
    
    func loadJson(filename fileName: String) -> [MoviesListModel]? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let allBlogPosts = try decoder.decode([MoviesListModel].self, from: data)
                return allBlogPosts
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
}
