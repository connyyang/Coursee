//
//  CourseDetailsViewController.swift
//  Coursee
//
//  Created by Conny Yang on 11/12/2016.
//  Copyright © 2016 Conny Yang. All rights reserved.
//

import UIKit

class CourseDetailsViewController: UIViewController {
    
    @IBOutlet weak var courseTitleLabel: UILabel!
    
    @IBOutlet weak var joinCourseButton: UIButton!

    @IBOutlet weak var courseDetailsText: UITextView!
    
    @IBOutlet weak var courseFeaturedImageView: UIImageView!
    
    var course : Course!
    
    
    @IBAction func playButtonDidTap(_ sender: Any) {
    }
    
    @IBAction func joinButtonDidTap(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Congratulations!", message: "You have enrolled \(course.title) successfully!", preferredStyle: UIAlertControllerStyle.alert)
        
     
        let okAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                self.dismiss(animated: true, completion: nil)
            })
       
        alertController.addAction(okAction)
        
        self.present(alertController, animated: true, completion: nil)
    
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        courseTitleLabel.text = course.title
        courseDetailsText.text = course.description
        courseFeaturedImageView.image = course.featuredImage
        joinCourseButton.setTitle("Join \(course.instructor)", for: [])
        
        joinCourseButton.layer.cornerRadius = 10
        joinCourseButton.layer.masksToBounds = true
        
        self.navigationItem.title = course.instructor
    }

    struct StoryBoard
    {
        static var presentVideo = "presentVideo"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.presentVideo
        {
            if let playerViewController = segue.destination as? PlayerViewController
            {
                playerViewController.youtubeURL = course.instructionVideoURL
            }
            
        }
    }

}
