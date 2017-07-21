//
//  VideoVC.swift
//  Memento Mori
//
//  Created by Wayne Renbjor on 7/21/17.
//  Copyright © 2017 WCRStudios. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var videoTitle: UILabel!
    
    private var _mementoMori: MemntoMori!
    
    var mementoMori : MemntoMori {
        get {
            return _mementoMori
        }
        set {
            _mementoMori = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        videoTitle.text = mementoMori.vidoeTitle
        
        webView.scrollView.contentInset = UIEdgeInsetsMake(-15,-8,0,-8);
        webView.loadHTMLString(mementoMori.videoURL, baseURL: nil)
        
    }

   

}
