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
        
        NSLayoutConstraint.activate([
            
            label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            label1.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            label1.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            
            label2.topAnchor.constraint(equalTo: label1.bottomAnchor),
            label2.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            label2.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            label2.heightAnchor.constraint(equalTo: label1.heightAnchor),
        
            label3.topAnchor.constraint(equalTo: label2.bottomAnchor),
            label3.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            label3.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            label3.heightAnchor.constraint(equalTo: label2.heightAnchor),
            
            label4.topAnchor.constraint(equalTo: label3.bottomAnchor),
            label4.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            label4.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            label4.heightAnchor.constraint(equalTo: label3.heightAnchor),
            
            label5.topAnchor.constraint(equalTo: label4.bottomAnchor),
            label5.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            label5.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            label5.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            label5.heightAnchor.constraint(equalTo: label4.heightAnchor)
        ])
        
    }
    
}
