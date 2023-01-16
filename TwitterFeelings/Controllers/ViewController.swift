//
//  ViewController.swift
//  TwitterFeelings
//
//  Created by Sergio Ordaz Romero on 15/01/23.
//

import UIKit
import CoreML

class ViewController: UIViewController {

    @IBOutlet var textLabel: UITextField!
    @IBOutlet var emotionLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func analize(_ sender: UIButton) {
        if let model = try? TwitterFeeling(configuration: .init()) {
            let prediction = try! model.prediction(text: "@Apple is the best")
            print(prediction.label)
        }
    }
}

