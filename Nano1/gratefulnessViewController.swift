//
//  gratefulnessViewController.swift
//  Nano1
//
//  Created by Eldwin Anthony on 27/04/22.
//

import UIKit

class gratefulnessViewController: UIViewController {

    @IBOutlet weak var gratefulnessView: UIView!
    @IBOutlet weak var gratefulnessText: UIView!
    @IBOutlet weak var gratefulness: UITextView!
    @IBOutlet weak var timeLabel: UILabel!
    
    var timeRemaining: Int = 60
    var timer: Timer!
    
    var gratefulnessData = contentDetails
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomData = gratefulnessData.randomElement()
        
        gratefulness.text = randomData?.gratefulness
        
        gratefulnessText.layer.cornerRadius = 12
        gratefulnessView.layer.cornerRadius = gratefulnessView.layer.bounds.width / 2
        gratefulnessView.clipsToBounds = true
    
    }
    
    @IBAction func randomizeButton(_ sender: Any) {
        let randomData = gratefulnessData.randomElement()
        gratefulness.text = randomData?.gratefulness
    }
    
    @IBAction func playTapped(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(step), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseTapped(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        timer.invalidate()
        timeRemaining = 60
        timeLabel.text = "\(timeRemaining)"
    }
    
    @objc func step(){
        if timeRemaining > 0 {
            timeRemaining -= 1
        }
        else{
            timer.invalidate()
            timeRemaining = 60
        }
        timeLabel.text = "\(timeRemaining)"
    }
    
    
    
}
