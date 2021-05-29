//
//  MovieListTableCell.swift
//  Assignment
//
//  Created by Aniket Prakash on 29/05/21.
//

import UIKit

class MovieListTableCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var releaseDate: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(_ result: MoviesListModel) {
        titleLabel.text = result.original_title
        releaseDate.text = result.release_date
//        ratingLabel.text = " " + result.vote_average?.description ?? ""
    }
    
}
