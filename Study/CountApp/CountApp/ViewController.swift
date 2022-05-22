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
    
    let customLabel: UILabel = {
        let label = UILabel()
        label.text = "Custom"
        label.textColor = .black
        
        return label
    }()
    
    lazy var customButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("화면전환", for: .normal)
        btn.backgroundColor = .systemBlue
        btn.setTitleColor(.white, for: .normal)
        btn.addTarget(self, action: #selector(click), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        countLabel.text = "\(count)"
        setLayout()
    }
    
    func setLayout() {
        // SnapKit - 라이브러리
        // 부모뷰를 세팅
        self.view.addSubview(customLabel)
        // 제약조건을 변경하겠다.
        customLabel.translatesAutoresizingMaskIntoConstraints = false
        // 제약조건 세팅 (가로세로 중앙정렬)
        customLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        customLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 50).isActive = true
        
        self.view.addSubview(customButton)
        customButton.translatesAutoresizingMaskIntoConstraints = false
        customButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        customButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        customButton.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        customButton.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
    }
    
    @objc func click() {
        print("clicked")
        
        // nextView with code
        let SecondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController
        
        SecondVC?.getCount = count
        navigationController?.pushViewController(SecondVC!, animated: true)
    }
}
