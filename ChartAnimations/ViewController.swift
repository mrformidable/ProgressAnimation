//
//  ViewController.swift
//  ChartAnimations
//
//  Created by Michael A on 2018-05-22.
//  Copyright © 2018 AI Labs. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(_ red: CGFloat, _ green: CGFloat, _ blue: CGFloat) -> UIColor {
        return UIColor.init(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
    static let defaultOuterColor = UIColor.rgb(56, 25, 49)
    static let defaultInnerColor: UIColor = .rgb(234, 46, 111)
    static let defaultPulseFillColor = UIColor.rgb(86, 30, 63)    
}

class ViewController: UIViewController {

    var count: CGFloat = 0
    var progressRing: CircularProgressBar!
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        let xPosition = view.center.x
        let yPosition = view.center.y
        let position = CGPoint(x: xPosition, y: yPosition)
     
        progressRing = CircularProgressBar(radius: 100, position: position, innerTrackColor: .defaultInnerColor, outerTrackColor: .defaultOuterColor, lineWidth: 20)
         view.layer.addSublayer(progressRing)
         timer = Timer.scheduledTimer(timeInterval: 0.3, target: self, selector: #selector(incrementCount), userInfo: nil, repeats: true)
         timer.fire()

        view.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(resetProgressCount)))
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    // Note only works when time has not been invalidated yet
    @objc func resetProgressCount() {
        count = 0
        timer.fire()
    }
    
    @objc func incrementCount() {
        count += 1
        progressRing.progress = count
        if count >= 100.0 {
            timer.invalidate()
        }
    }

}











