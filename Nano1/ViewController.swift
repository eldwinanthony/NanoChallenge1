//
//  ViewController.swift
//  Nano1
//
//  Created by Eldwin Anthony on 26/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    var nameFieldValue: String?
    
    //Outlets
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set start button
        startButton.layer.cornerRadius = 8
        
        //set name text field
        nameTextField.layer.cornerRadius = 8
        nameTextField.layer.shadowColor = UIColor.gray.cgColor
        nameTextField.layer.shadowOpacity = 0.4
        nameTextField.layer.shadowOffset = .zero
        nameTextField.layer.shadowRadius = 2
        
        // add gesture tap
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(hideKeyboard)))
    }
    
    @objc private func hideKeyboard(){
        self.view.endEditing(true)
    }

    @IBAction func clearName(_ sender: Any) {
        nameTextField.text = ""
    }
    
    @IBAction func startButton(_ sender: Any) {
        nameFieldValue = nameTextField.text
        performSegue(withIdentifier: "startSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as? StoryViewController
        nextVC?.receivedName = nameFieldValue
    }
}

