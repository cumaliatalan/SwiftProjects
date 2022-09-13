//
//  ViewController.swift
//  Counters
//
//  Created by Misafir on 17.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var lastTime = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lastTime = 4
        timeLabel.text = "Zaman: \(lastTime)"
        Thread.sleep(forTimeInterval: 1)
        
    }

    @IBAction func startButton(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFonksiyonu), userInfo: nil, repeats: true)
    }
    
    @objc func timerFonksiyonu() {
        
        timeLabel.text = "Zaman: \(lastTime)"
        lastTime = lastTime - 1
        
        if lastTime == 0 {
            timeLabel.text = "Süre Bitti"
            timer.invalidate()
        }
    }
}

