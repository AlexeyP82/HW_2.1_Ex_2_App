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
    
    redView.layer.cornerRadius = 50
    redView.alpha = 0.3
    
    yellowView.layer.cornerRadius = 50
    yellowView.alpha = 0.3
    
    greenView.layer.cornerRadius = 50
    greenView.alpha = 0.3
    
    startButton.layer.cornerRadius = 10
  }

  @IBAction func startButtonPressed() {
    if redView.alpha == 1 {
      redView.alpha = 0.3
      yellowView.alpha = 1
    } else if yellowView.alpha == 1 {
      yellowView.alpha = 0.3
      greenView.alpha = 1
    } else if greenView.alpha == 1 {
      greenView.alpha = 0.3
      redView.alpha = 1
    } else {
      redView.alpha = 1
      startButton.setTitle("Next", for: .normal)
    }
  }
}

