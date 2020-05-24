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
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        stopRecordButton.isEnabled = false
    }

    @IBAction func recordAudio(_ sender: Any) {
        recordingStatus.text = "Recording in Progress"
        recordButton.isEnabled = false
        stopRecordButton.isEnabled = true
    }
    
    
    @IBAction func stopRecording(_ sender: Any) {
        print("Recording stop")
        recordingStatus.text = "Tap to Record"
        recordButton.isEnabled = true
        stopRecordButton.isEnabled = false
    }
}

