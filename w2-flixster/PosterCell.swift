//
//  PosterCell.swift
//  w2-flixster
//
//  Created by Phuong Anh Le on 3/12/23.
//

import UIKit
import Nuke

class PosterCell: UICollectionViewCell {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func configure(with movie: Movie) {
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w200" + movie.poster_path)!, into: posterImageView)
    }
    
    @IBOutlet weak var posterImageView: UIImageView!
}
