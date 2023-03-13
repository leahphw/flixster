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
    var similarMovies: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        Nuke.loadImage(with: URL(string: "https://image.tmdb.org/t/p/w500" + movie.backdrop_path)!, into: movieBackdrop)
        movieTitle.text = movie.original_title
        movieVoteAverage.text = String(movie.vote_average) + " Vote Average"
        movieVotes.text = String(movie.vote_count) + " Votes"
        moviePopularity.text = String(movie.popularity) + " Popularity"
        movieDescription.text = movie.overview
        
    }
    
    @IBOutlet weak var movieBackdrop: UIImageView!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieVoteAverage: UILabel!
    @IBOutlet weak var movieVotes: UILabel!
    @IBOutlet weak var moviePopularity: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    
    @IBAction func similarButton(_ sender: UIButton) {
        let url = URL(string: "https://api.themoviedb.org/3/movie/\(movie.id)/similar?api_key=YOUR_API_KEY")!
            let task = URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        let decoder = JSONDecoder()
                        let result = try decoder.decode(MoviesResponse.self, from: data)
                        let storyboard = UIStoryboard(name: "Main", bundle: nil)
                        let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
                        viewController.movies = result.results
                        viewController.navigationItem.title = "Similar Movies"
                        self.present(viewController, animated: true, completion: nil)
                    } catch {
                        print(error)
                    }
                }
            }
            task.resume()
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
