//
//  ViewController.swift
//  Memento Mori
//
//  Created by Wayne Renbjor on 7/21/17.
//  Copyright © 2017 WCRStudios. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var moris = [MemntoMori]()
    
    let m1 = MemntoMori(imageURL: "http://www.chris-ramsay.com/uploads/2/7/6/1/27612397/ramsay-02_orig.png", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/lRduxmLiwtk?list=PLNZrOW6Nuoco65HvWWnqrlKGGpZ9cozPo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "BEST COLOR CHANGES - Top 5")
    let m2 = MemntoMori(imageURL: "https://lh6.googleusercontent.com/-xwOd4ATmUZ0/AAAAAAAAAAI/AAAAAAAACuk/HO0QpFB81hc/photo.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/-11a8xTY2os?list=PLNZrOW6Nuoco65HvWWnqrlKGGpZ9cozPo\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "UPDATES! - My 1st Deck // PewdiePie Collab // Merch + MORE!!")
    let m3 = MemntoMori(imageURL: "https://lh5.googleusercontent.com/-Moqa1N9rvCk/AAAAAAAAAAI/AAAAAAAAACA/dFeedtK49do/photo.jpg", videoURL: "<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/a_zwoyE0FOU?list=PLNZrOW6Nuoco65HvWWnqrlKGGpZ9cozPo\" frameborder=\"0\" allowfullscreen style=\"padding:0; margin:0;\"></iframe>", videoTitle: "Building A MAGIC Routine - Things You NEED to Know! ")
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        moris.append(m1)
        moris.append(m2)
        moris.append(m3)

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "MagicCell", for: indexPath) as? MagicCell {
            
            let mementoMori = moris[indexPath.row]
            
            cell.updateUI(mementoMori: mementoMori)
            
            return cell
            
        } else {
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moris.count
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mementoMori = moris[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: mementoMori)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? VideoVC {
            
            if let mori = sender as? MemntoMori {
                destination.mementoMori = mori
            }
            
        }
    }
    
}

