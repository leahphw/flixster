//
//  MovieCell.swift
//  w2-flixster
//
//  Created by Phuong Anh Le on 3/5/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        movieCellTitle.text = movie.movieName
        movieCellDescription.text = movie.movieAbout
        Nuke.loadImage(with: movie.moviePoster, into: movieCellPoster)
    }
    
    
    @IBOutlet weak var movieCellPoster: UIImageView!
    @IBOutlet weak var movieCellTitle: UILabel!
    @IBOutlet weak var movieCellDescription: UILabel!
}