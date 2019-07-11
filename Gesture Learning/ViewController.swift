//
//  ViewController.swift
//  Gesture Learning
//
//  Created by Silamitra Edvyn Tanu on 11/07/19.
//  Copyright © 2019 Silamitra Edvyn Tanu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet weak var rectangleView: UIView!
    
    @IBOutlet weak var kotakView: UIView!
    
    var pinchGesture = UIPinchGestureRecognizer()
    
    var tapColor: [UIColor] = [#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1), #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), #colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.pinchView))
        kotakView.isUserInteractionEnabled = true
        kotakView.addGestureRecognizer(pinchGesture)
    }
    
    @objc func pinchView(sender: UIPinchGestureRecognizer) {
        self.view.bringSubviewToFront(kotakView)
        sender.view?.transform = (sender.view?.transform)!.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1.0
    }

    @IBAction func tapped(_ sender: UITapGestureRecognizer) {
        let random = Int.random(in: 0...3)
        kotakView.backgroundColor = tapColor[random]
    }
    
}

