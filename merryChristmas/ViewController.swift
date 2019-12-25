//
//  ViewController.swift
//  merryChristmas
//
//  Created by KAVIRAJ PANDEY on 25/12/19.
//  Copyright © 2019 KAVIRAJ PANDEY. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var playSound = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sound = Bundle.main.path(forResource: "merry", ofType: "wav")
        do {
            playSound = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        }
        catch {
            print(error)
        }
    }

    @IBAction func playMusic(_ sender: UIButton) {
        playSound.play()
    }
    
}

