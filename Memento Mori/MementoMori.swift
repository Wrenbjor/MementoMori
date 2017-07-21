//
//  MementoMori.swift
//  Memento Mori
//
//  Created by Wayne Renbjor on 7/21/17.
//  Copyright © 2017 WCRStudios. All rights reserved.
//

import Foundation

class MemntoMori {

    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var vidoeTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
        
    }
    
}
