//
//  ViewController.swift
//  Project6
//
//  Created by Maksim Li on 26/10/2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = .red
        label1.text = "THESE"
        label1.sizeToFit()
        
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .cyan
        label2.text = "ARE"
        label2.sizeToFit()
        
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .yellow
        label3.text = "SOME"
        label3.sizeToFit()
        
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .green
        label4.text = "AWSOME"
        label4.sizeToFit()
        
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .orange
        label5.text = "LABELES"
        label5.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
        let labelHeight = (view.frame.height / 5) - 2
        
        for (index, label) in [label1, label2, label3, label4, label5].enumerated() {
            
            NSLayoutConstraint.activate([
                label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                label.heightAnchor.constraint(equalToConstant: labelHeight)
            ])
            
            
            if index == 0 {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            } else {
                let previousLabel = [label1, label2, label3, label4, label5][index - 1]
                label.topAnchor.constraint(equalTo: previousLabel.bottomAnchor, constant: 2).isActive = true
            }
        }
        
        
        if let lastLabel = [label1, label2, label3, label4, label5].last {
            lastLabel.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        }
    }
    
}
