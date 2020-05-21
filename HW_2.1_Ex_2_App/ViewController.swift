//
//  ViewController.swift
//  HW_2.1_Ex_2_App
//
//  Created by Алексей Подлевский on 19.05.2020.
//  Copyright © 2020 Independent Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var redView: UIView!
  @IBOutlet weak var yellowView: UIView!
  @IBOutlet weak var greenView: UIView!
  @IBOutlet weak var startButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    let lightOff: CGFloat = 0.3
    
    redView.alpha = lightOff
    yellowView.alpha = lightOff
    greenView.alpha = lightOff
    
    startButton.layer.cornerRadius = 10
  }
  
  override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    
    redView.layer.cornerRadius = redView.frame.width / 2
    yellowView.layer.cornerRadius = yellowView.frame.width / 2
    greenView.layer.cornerRadius = greenView.frame.height / 2
  }

  @IBAction func startButtonPressed() {
    let lightOn: CGFloat = 1.0
    let lightOff: CGFloat = 0.3
    
    startButton.setTitle("Next", for: .normal)
    
    if redView.alpha == lightOn {
      redView.alpha = lightOff
      yellowView.alpha = lightOn
    } else if yellowView.alpha == lightOn {
      yellowView.alpha = lightOff
      greenView.alpha = lightOn
    } else if greenView.alpha == lightOn {
      greenView.alpha = lightOff
      redView.alpha = lightOn
    } else {
      redView.alpha = lightOn
    }
  }
}

