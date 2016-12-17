//
//  CourseViewController.swift
//  Coursee
//
//  Created by Conny Yang on 11/12/2016.
//  Copyright © 2016 Conny Yang. All rights reserved.
//

import UIKit

class CourseViewController: UIViewController {
  
    @IBOutlet weak var chefButton: UIButton!
    
    @IBOutlet weak var iosButton: UIButton!
    
    
    @IBOutlet weak var popButton: UIButton!
    
    var courseStore : [Course] = []
    
    var selectedCourse : Course!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        courseStore = CourseStore.downloadNewCourses()
        
        self.updateUI()
    }
    
    func updateUI(){
        chefButton.setImage(courseStore[0].buttonImage, for: [])
        iosButton.setImage(courseStore[1].buttonImage, for: [])
        popButton.setImage(courseStore[2].buttonImage, for: [])
    }
    
    @IBAction func chefCourseDidTap(_ sender: Any) {
        let course = courseStore[0]
        selectedCourse = course
        
        self.performSegue(withIdentifier: StoryBoard.showCourseDetails, sender: nil)
    }
    
    @IBAction func iosCourseDidTap(_ sender: Any) {
        let course = courseStore[1]
        selectedCourse = course
        
        self.performSegue(withIdentifier: StoryBoard.showCourseDetails, sender: nil)
    }
    
    
    @IBAction func popCourseDidTap(_ sender: Any) {
        let course = courseStore[2]
        selectedCourse = course
        
        self.performSegue(withIdentifier: StoryBoard.showCourseDetails, sender: nil)
    }
    
    struct StoryBoard{
        static let showCourseDetails = "ShowCourseDetails"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.showCourseDetails {
            let courseDetailsViewController = segue.destination as? CourseDetailsViewController
            
            if courseDetailsViewController != nil
            {
                courseDetailsViewController!.course = self.selectedCourse
            }
            
        }
    }
}
