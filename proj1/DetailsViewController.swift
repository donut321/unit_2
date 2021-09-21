//
//  DetailsViewController.swift
//  proj1
//
//  Created by I ໓໐ຖนt I on 9/8/21.
//

import UIKit
import Alamofire

class DetailsViewController: UIViewController {

    @IBOutlet weak var back_drop: UIImageView!
    @IBOutlet weak var post_review: UIImageView!
    @IBOutlet weak var pic_title: UILabel!
    @IBOutlet weak var pic_desc: UILabel!
    
    var movie: [String:Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        pic_title.text = movie["title"] as? String
        pic_desc.text = movie["overview"] as? String
        pic_desc.sizeToFit()
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterURL = URL(string: baseURL + posterPath)
        
        post_review.af.setImage(withURL: posterURL!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        back_drop.af.setImage(withURL: backdropURL!)
        // Do any additional setup after loading the view.
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
