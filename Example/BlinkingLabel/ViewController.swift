//
//  ViewController.swift
//  BlinkingLabel
//
//  Created by kuschwyze on 06/13/2022.
//  Copyright (c) 2022 kuschwyze. All rights reserved.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//}

import UIKit
import BlinkingLabel
 
class ViewController: UIViewController {
 
    var isBlinking = false
    let blinkingLabel = BlinkingLabel()
 
    override func viewDidLoad() {
        super.viewDidLoad()
 
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
 
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton()
        toggleButton.setTitle("Toggle Blinking", for: [])
//        toggleButton.setTitleColor(UIColor.redColor, forState: .Normal)
//        toggleButton.addTarget(self, action: "toggleBlinking", [])
        view.addSubview(toggleButton)
    }
 
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }
 
}
