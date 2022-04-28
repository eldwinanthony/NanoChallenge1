//
//  StoryViewController.swift
//  Nano1
//
//  Created by Eldwin Anthony on 26/04/22.
//

import UIKit

class StoryViewController: UIViewController, UITextViewDelegate {
    
    var receivedName: String?

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var circleView1: UIView!
    @IBOutlet weak var circleView2: UIView!
    @IBOutlet weak var chatView1: UIView!
    @IBOutlet weak var chatView2: UIView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        textView.delegate = self
        textView.text = "I feel sad today because.."
        textView.textColor = UIColor.lightGray
        
        //make view to circle
        circleView1.layer.cornerRadius = circleView1.layer.bounds.width / 2
        circleView1.clipsToBounds = true
        
        circleView2.layer.cornerRadius = circleView2.layer.bounds.width / 2
        circleView2.clipsToBounds = true
        
        //set chatview cornerradius
        chatView1.layer.cornerRadius = 12
        chatView2.layer.cornerRadius = 12
        
        //Set textview
        textView.layer.cornerRadius = 12
        textView.layer.shadowColor = UIColor.black.cgColor
        textView.layer.shadowOpacity = 0.4
        textView.layer.shadowOffset = .zero
        textView.layer.shadowRadius = 6
        textView.layer.masksToBounds = false
        
        //set next button
        nextButton.layer.cornerRadius = 8
        
        //setup name data
        if receivedName == "" {
            receivedName = "Friend"
        }
        nameLabel.text = "Hi, \(receivedName!)"
        
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
    }
    
    @objc private func hideKeyboard(){
        self.view.endEditing(true)
    }
    
    @IBAction func clearStory(_ sender: Any) {
        textView.text = ""
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "I feel sad today because.."
            textView.textColor = UIColor.lightGray
        }
    }
    

}
