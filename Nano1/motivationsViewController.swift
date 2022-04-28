//
//  motivationsViewController.swift
//  Nano1
//
//  Created by Eldwin Anthony on 27/04/22.
//

import UIKit

class motivationsViewController: UIViewController {
    
    var motivationData = contentDetails
    
    //set button and views
    @IBOutlet weak var motivationsView: UIView!
    @IBOutlet weak var generateButton: UIButton!
    @IBOutlet weak var motivations: UITextView!
    @IBOutlet weak var checkerSlider: UISlider!
    @IBOutlet weak var motivationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // randomize motivation data
        let randomData = motivationData.randomElement()
        motivations.text = randomData?.motivation
        
        //set corner radius
        generateButton.layer.cornerRadius = 8
        motivationsView.layer.cornerRadius = 12

    }
    
    @IBAction func generateAnother(_ sender: Any) {
        let randomData = motivationData.randomElement()
        motivations.text = randomData?.motivation
    }
    
    @IBAction func sliderChanged(_ sender: Any) {
        let sliderValue = checkerSlider.value
        
        if sliderValue > 5 {
            motivationLabel.text = "Wow, keep the good work!"
        }
        else if sliderValue < 5 {
            motivationLabel.text = "Get more motivations above!"
        }
    }
    

}
