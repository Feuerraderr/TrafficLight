//
//  ViewController.swift
//  TrafficLight
//
//  Created by Владислав Резван on 28.06.2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    private enum TrafficLight {
        case start
        case red
        case yellow
        case green
    }
    
    private var lightColor: TrafficLight = .start
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        redLightView.alpha = 0.1
        
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        yellowLightView.alpha = 0.1
        
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        greenLightView.alpha = 0.1
        
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch lightColor {
        case .start:
            redLightView.alpha = 1
            lightColor = .red
        case .red:
            redLightView.alpha = 0.1
            yellowLightView.alpha = 1
            lightColor = .yellow
        case .yellow:
            yellowLightView.alpha = 0.1
            greenLightView.alpha = 1
            lightColor = .green
        case .green:
            greenLightView.alpha = 0.1
            redLightView.alpha = 1
            lightColor = .red
        }
    }
    
}

