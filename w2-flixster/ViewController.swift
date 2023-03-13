//
//  ViewController.swift
//  w2-flixster
//
//  Created by Phuong Anh Le on 3/5/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    var movies: [Movie] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        let movie = movies[indexPath.row]
        cell.configure(with: movie)
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=18956f29f0667cfc5938aa6b0e1ce046")!

        let request = URLRequest(url: url)

        // Create a URLSession using a shared instance and call its dataTask method
        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            guard let data = data else {
                print("❌ Data is nil")
                return
            }
            
            do {
                let jsonDictionary = try JSONSerialization.jsonObject(with: data) as? [String: Any]
                // print(jsonDictionary)
                let decoder = JSONDecoder()
                let response = try decoder.decode(MoviesResponse.self, from: data)
                let movies = response.results
                DispatchQueue.main.async {
                    self?.movies = movies
                    self?.tableView.reloadData()
                }
                print("✅ \(movies)")
            } catch {
                print("❌ Error parsing JSON: \(error.localizedDescription)")
            }
        }

        // Initiate the network request
        task.resume()
        
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell),
           let detailViewController = segue.destination as? DetailViewController {
            
            let movie = movies[indexPath.row]
            detailViewController.movie = movie
        }
        
        if segue.identifier == "showSimilarMovies" {
            let destinationVC = segue.destination as! DetailViewController
            let indexPath = tableView.indexPathForSelectedRow!
            let movie = movies[indexPath.row]
            destinationVC.movie = movie
        }
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
       
    }


}

