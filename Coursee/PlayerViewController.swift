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

    @IBAction func closeDidTap(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        youtubeURL = nil
        if youtubeURL != nil
        {
            youtubePlayerView.loadVideoURL(youtubeURL)
        }
        else
        {
            // show an alert view to let know youtube video cannot be found
            
            let alertController = UIAlertController(title: "Warning", message: "This video cannot be found!", preferredStyle: UIAlertControllerStyle.alert)
            
            let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            })
            
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
        
        youtubePlayerView.layer.cornerRadius = 10
        youtubePlayerView.layer.masksToBounds = true
        
    }
    
    
    
   }
