//
//  botones.swift
//  3septiembre
//
//  Created by macbook on 03/10/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import UIKit

class boton: UIButton {
    
    override func awakeFromNib() {
    
        let flash = CABasicAnimation(keyPath: "opacity")
        flash.duration = 0.5
        flash.fromValue = 1.0
        flash.toValue = 0.1
        flash.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        flash.autoreverses = true
        flash.repeatCount = 3
        layer.add(flash, forKey: nil)
        
    }
}
