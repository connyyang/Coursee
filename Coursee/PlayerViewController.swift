//
//  PlayerViewController.swift
//  Coursee
//
//  Created by Conny Yang on 16/12/2016.
//  Copyright © 2016 Conny Yang. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    

    @IBOutlet weak var youtubePlayerView: YouTubePlayerView!
    
    var youtubeURL : URL!

    override func viewDidLoad() {
        super.viewDidLoad()
        if youtubeURL != nil
        {
            youtubePlayerView.loadVideoURL(youtubeURL)
        }
        else
        {
        
        }
        
        
    }
    
   }
