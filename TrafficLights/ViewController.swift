//
//  ViewController.swift
//  TrafficLights
//
//  Created by VG on 25.01.2022.
//

import UIKit

enum CurrentLight {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var currentLight = CurrentLight.red
    let lightIsOn: CGFloat = 1
    let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 60
        yellowLight.layer.cornerRadius = 60
        greenLight.layer.cornerRadius = 60
        
        startButton.layer.cornerRadius = 20
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
    }

    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            currentLight = .red
        }
    }
}

