//
//  ViewController.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 08/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var animalListView: AnimalListView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animalListView = AnimalListView(view)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        animalListView?.viewDidLayoutSubviews()
    }
}
