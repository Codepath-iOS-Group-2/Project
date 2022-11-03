//
//  WorkoutsViewController.swift
//  Parstagram
//
//  Created by Camila Aichele on 11/2/22.
//

import UIKit
import AlamofireImage

class WorkoutsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var TableView: UITableView!
    
    var workouts = [[String:Any]]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        TableView.dataSource = self
        TableView.delegate = self
        
        // Do any additional setup after loading the view.
        
        print("Hello")
        
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed")!
        let request = URLRequest(url: url, cachePolicy: .reloadIgnoringLocalCacheData, timeoutInterval: 10)
        let session = URLSession(configuration: .default, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
             // This will run when the network request returns
             if let error = error {
                    print(error.localizedDescription)
             } else if let data = data {
                    let dataDictionary = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]

                 self.workouts = dataDictionary["results"] as! [[String:Any]]
                 
                 self.TableView.reloadData()
                 
                 print(dataDictionary)
                    // TODO: Get the array of movies
                    // TODO: Store the movies in a property to use elsewhere
                    // TODO: Reload your table view data

             }
        }
        task.resume()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return workouts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TableView.dequeueReusableCell(withIdentifier: "WorkoutsCell") as! WorkoutsCell
        
        let workout = workouts[indexPath.row]
        let title = workout["title"] as! String
        let synopsis = workout["overview"] as! String
        
        cell.titleLabel.text = title
        cell.synopsisLabel.text = synopsis
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = workout["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        cell.posterView.af.setImage(withURL: posterUrl!)
        
        return cell
    }
    
    override func prepare(for segue:
        UIStoryboardSegue, sender: Any?){
        
        print("Loading up the details screen")
        
        // find selected movie
        
        let cell = sender as! UITableViewCell
        let indexPath = TableView.indexPath(for: cell)!
        let workout = workouts[indexPath.row]
        
        // pass selected workout to details view controller
        
        let detailsViewController =
        segue.destination as!
        WorkoutsDetailsViewController
        
        detailsViewController.workout = workout
        
        TableView.deselectRow(at: indexPath, animated: true)
        
    }

}

