//
//  ViewController.swift
//  finalTrafficLight
//
//  Created by Daniel on 06.02.2023.
//

import UIKit

enum TrafficLight {
    case red, yellow, green
}
class ViewController: UIViewController {

    @IBOutlet var startButton: UIButton!
    @IBOutlet var greenCircle: UIView!
    @IBOutlet var yellowCircle: UIView!
    @IBOutlet var redCircle: UIView!
    
    var currentLight = TrafficLight.red
    var lightIsOn: CGFloat = 1
    var lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        startButton.layer.cornerRadius = 10
        redCircle.layer.cornerRadius = redCircle.frame.width / 2
        yellowCircle.layer.cornerRadius = yellowCircle.frame.width / 2
        greenCircle.layer.cornerRadius = greenCircle.frame.width / 2
        
        yellowCircle.alpha = lightIsOff
        redCircle.alpha = lightIsOff
        greenCircle.alpha = lightIsOff
    }


    @IBAction func pressButton() {
        if startButton.currentTitle == "Start" {
            startButton.setTitle("Press", for: .normal )
        }
        
        switch currentLight {
        case .red:
            redCircle.alpha = lightIsOn
            greenCircle.alpha = lightIsOff
            currentLight = .yellow
        case .yellow:
            yellowCircle.alpha = lightIsOn
            redCircle.alpha = lightIsOff
            currentLight = .green
        case .green:
            greenCircle.alpha = lightIsOn
            yellowCircle.alpha = lightIsOff
            currentLight = .red
            }
        }
    }

