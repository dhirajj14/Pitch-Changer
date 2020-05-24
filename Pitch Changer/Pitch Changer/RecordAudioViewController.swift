//
//  RecordAudioViewController.swift
//  Pitch Changer
//
//  Created by Dhiraj Jain on 5/23/20.
//  Copyright © 2020 Dhiraj Jain. All rights reserved.
//

import UIKit
import AVFoundation

class RecordAudioViewController: UIViewController, AVAudioRecorderDelegate {

    
    @IBOutlet weak var recordingStatus: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordButton: UIButton!
    
    var audioRecorder : AVAudioRecorder!
    
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
        
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory,.userDomainMask, true)[0] as String
        let recordingName = "recordedVoice.wav"
        let pathArray = [dirPath, recordingName]
        let filePath = URL(string: pathArray.joined(separator: "/"))

        let session = AVAudioSession.sharedInstance()
        try! session.setCategory(AVAudioSession.Category.playAndRecord, mode: AVAudioSession.Mode.default, options: AVAudioSession.CategoryOptions.defaultToSpeaker)

        try! audioRecorder = AVAudioRecorder(url: filePath!, settings: [:])
        audioRecorder.isMeteringEnabled = true
        audioRecorder.prepareToRecord()
        audioRecorder.record()
        
    }
    
    
    @IBAction func stopRecording(_ sender: Any) {
        print("Recording stop")
        recordingStatus.text = "Tap to Record"
        recordButton.isEnabled = true
        stopRecordButton.isEnabled = false
        
        audioRecorder.stop()
        let audioSession = AVAudioSession.sharedInstance()
        try! audioSession.setActive(false)
    }
}

