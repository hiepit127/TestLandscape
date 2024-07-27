//
//  TestViewController.swift
//  LearnSwift
//
//  Created by Hoàn Nguyễn on 7/7/24.
//

import UIKit

class TestViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        LockOrientationManager.lockToOrientation(newOrientation: .portrait, using: .portrait)
    }
    
    @IBAction func tessst(_ sender: Any) {
        print("tapped")
        if LockOrientationManager.isPortait() {
            LockOrientationManager.lockToOrientation(newOrientation: .landscapeRight, using: .landscapeRight)
        } else {
            LockOrientationManager.lockToOrientation(newOrientation: .portrait, using: .portrait)
        }
    }
}
