//
//  ViewController.swift
//  Pitch Changer
//
//  Created by Dhiraj Jain on 5/23/20.
//  Copyright © 2020 Dhiraj Jain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var recordingStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordingStatus.text = "Recording in Progress"
    }
    
    
    @IBAction func stopRecording(_ sender: Any) {
        print("Recording stop")
    }
}

