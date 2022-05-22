//
//  SecondViewController.swift
//  CountApp
//
//  Created by judongseok on 2022/05/19.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    public var getCount = 0
    
    let countLabel: UILabel = {
        let label = UILabel()
        label.text = "값 없음"
        label.font = UIFont.systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // 화면이 생성 된 후 호출
    override func viewDidLoad() {
        setLayout()
    }
    
    func setLayout() {
        self.view.addSubview(countLabel)
        
        countLabel.text = "\(getCount)"
        
        countLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        countLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 100).isActive = true
    }
}
