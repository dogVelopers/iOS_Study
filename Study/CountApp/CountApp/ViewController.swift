//
//  ViewController.swift
//  CountApp
//
//  Created by judongseok on 2022/05/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var countLabel: UILabel!
    
    @IBAction func plusBtn(_ sender: Any) {
        print("plus")
        count += 1
        countLabel.text = "\(count)"
    }
    
    @IBAction func minusBtn(_ sender: Any) {
        print("minus")
        count -= 1
        countLabel.text = "\(count)"
    }
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        countLabel.text = "\(count)"
        // Do any additional setup after loading the view.
    }
}
