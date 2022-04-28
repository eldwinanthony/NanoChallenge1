//
//  activitiesViewController.swift
//  Nano1
//
//  Created by Eldwin Anthony on 26/04/22.
//

import UIKit

class activitiesViewController: UIViewController {

    @IBOutlet weak var circleViewHug1: UIView!
    @IBOutlet weak var circleViewHug2: UIView!
    @IBOutlet weak var activitiesView1: UIView!
    @IBOutlet weak var activitiesView2: UIView!
    @IBOutlet weak var motivationsButton: UIButton!
    @IBOutlet weak var gratefulnessButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Make uiview circle
        circleViewHug1.layer.cornerRadius = circleViewHug1.layer.bounds.width / 2
        circleViewHug1.clipsToBounds = true
        
        circleViewHug2.layer.cornerRadius = circleViewHug2.layer.bounds.width / 2
        circleViewHug2.clipsToBounds = true
        
        //Make corner radius activitiesview
        activitiesView1.layer.cornerRadius = 12
        activitiesView2.layer.cornerRadius = 12
        
        //Set motivationsview
        motivationsButton.layer.cornerRadius = 8
        motivationsButton.layer.shadowColor = UIColor.black.cgColor
        motivationsButton.layer.shadowOpacity = 0.2
        motivationsButton.layer.shadowOffset = .zero
        motivationsButton.layer.shadowRadius = 3
        motivationsButton.layer.masksToBounds = false
        
        //Set gratefulness
        gratefulnessButton.layer.cornerRadius = 8
        gratefulnessButton.layer.shadowColor = UIColor.black.cgColor
        gratefulnessButton.layer.shadowOpacity = 0.2
        gratefulnessButton.layer.shadowOffset = .zero
        gratefulnessButton.layer.shadowRadius = 3
        gratefulnessButton.layer.masksToBounds = false
        
    }


}
