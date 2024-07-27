//
//  ViewController.swift
//  TestLandscape
//
//  Created by Hoàn Nguyễn on 7/23/24.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func test(_ sender: Any) {
        let vc = TestViewController(nibName: "TestViewController", bundle: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

