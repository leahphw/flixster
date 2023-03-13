//
//  PostersViewController.swift
//  w2-flixster
//
//  Created by Phuong Anh Le on 3/12/23.
//

import UIKit
import Nuke

class PostersViewController: UIViewController, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return posters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCell
        let poster = posters[indexPath.item]
        cell.configure(with: poster)
        return cell
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var posters: [Movie] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=18956f29f0667cfc5938aa6b0e1ce046")!
        let request = URLRequest(url: url)


        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in


            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }


            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }


            let decoder = JSONDecoder()
            do {
                // Try to parse the response into our custom model
                let response = try decoder.decode(MoviesResponse.self, from: data)
                let posters = response.results
                print(posters)
                DispatchQueue.main.async {
                    self?.posters = posters
                    self?.collectionView.reloadData()
                }
            } catch {
                print(error.localizedDescription)
            }
        }


        // Initiate the network request
        task.resume()
        collectionView.dataSource = self
        
        // Set-up the layout
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        let numberOfColumns: CGFloat = 3
        let width = collectionView.bounds.width / numberOfColumns
        layout.itemSize.width = CGFloat(width)
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UICollectionViewCell,
           let indexPath = collectionView.indexPath(for: cell),
           let detailViewController = segue.destination as? DetailViewController {
            
            let poster = posters[indexPath.row]
            detailViewController.movie = poster
        }
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
