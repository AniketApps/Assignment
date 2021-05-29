//
//  ViewController.swift
//  Assignment
//
//  Created by Aniketh Prakash on 29/05/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var movieListTableView: UITableView!
    
    private var movieManager = MovieManager()
    private var movieData: [MoviesListModel]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieData = movieManager.loadJson(filename: "movies")
        registerNib()
    }
    
}

private extension ViewController {
    
    func registerNib() {
        let nib = UINib(nibName: "MovieListTableCell", bundle: nil)
        movieListTableView.register(nib, forCellReuseIdentifier: "movieCell")
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieData?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = movieListTableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath) as? MovieListTableCell, let movieData = movieData else
        { return UITableViewCell() }
        cell.configure(movieData[indexPath.row])
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
    }
}


