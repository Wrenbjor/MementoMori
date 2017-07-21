//
//  MagicCell.swift
//  Memento Mori
//
//  Created by Wayne Renbjor on 7/21/17.
//  Copyright © 2017 WCRStudios. All rights reserved.
//

import UIKit

class MagicCell: UITableViewCell {

    @IBOutlet weak var videoThumbnail: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateUI(mementoMori: MemntoMori){
        videoTitle.text = mementoMori.vidoeTitle
        
        let url = URL(string: mementoMori.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                
                DispatchQueue.global().sync {
                    self.videoThumbnail.image = UIImage(data:data)
                }
                
            } catch {
                
            }
        }
        //TODO: Video URL
        
    }


}
