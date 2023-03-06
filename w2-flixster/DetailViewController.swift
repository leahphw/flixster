//
//  DetailViewController.swift
//  w2-flixster
//
//  Created by Phuong Anh Le on 3/5/23.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Nuke.loadImage(with: movie.movieBackdrop, into: movieBackdrop)
        movieTitle.text = movie.movieName
        movieVoteAverage.text = movie.movieAverage
        movieVotes.text = movie.movieVotes
        moviePopularity.text = movie.moviePopularity
        movieDescription.text = movie.movieAbout
        
        
    }
    
    @IBOutlet weak var movieBackdrop: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieVoteAverage: UILabel!
    @IBOutlet weak var movieVotes: UILabel!
    @IBOutlet weak var moviePopularity: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
