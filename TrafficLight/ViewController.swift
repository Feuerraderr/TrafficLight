//
//  ViewController.swift
//  TrafficLight
//
//  Created by Владислав Резван on 28.06.2024.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var lightColor: TrafficLight = .red
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        redLightView.alpha = lightIsOff
        
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        yellowLightView.alpha = lightIsOff
        
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        greenLightView.alpha = lightIsOff
        
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonDidTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch lightColor {
        case .red:
            redLightView.alpha = lightIsOn
            greenLightView.alpha = lightIsOff
            lightColor = .yellow
        case .yellow:
            yellowLightView.alpha = lightIsOn
            redLightView.alpha = lightIsOff
            lightColor = .green
        case .green:
            greenLightView.alpha = lightIsOn
            yellowLightView.alpha = lightIsOff
            lightColor = .red
        }
    }
    
}

// MARK: - CurrentLight
extension ViewController {
    private enum TrafficLight {
        case red, yellow, green
    }
}
