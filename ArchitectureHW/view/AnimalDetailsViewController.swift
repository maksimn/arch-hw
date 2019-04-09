//
//  AnimalDetailsViewController.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 10/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalDetailsViewController: UIViewController {

    let someLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        someLabel.frame = CGRect(x: 50, y: 100, width: 200, height: 20)
        someLabel.text = "Детали Животного"
        someLabel.textColor = UIColor.white
        view.backgroundColor = UIColor.darkGray
        
        view.addSubview(someLabel)
    }
}
