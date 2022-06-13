//
//  BlinkingLabel.swift
//  BlinkingLabel
//
//  Created by Kusch Qin on 6/13/22.
//

import Foundation

public class BlinkingLabel : UILabel {
    public func startBlinking() {
        let options = UIViewAnimationOptions(rawValue: 0)
        UIView.animate(withDuration: 0.25, delay:0.0, options:options, animations: {
            self.alpha = 0
            }, completion: nil)
    }
 
    public func stopBlinking() {
        alpha = 1
        layer.removeAllAnimations()
    }
}
