//
//  ViewController.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 08/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.yellow
        
        let repository = AnimalListRepository()
        let animalList = repository.getAnimalList()
        let animal = repository.getAnimalWithId(5)
        
        print("animalList.count = \(animalList.count)")
        print("animal: id = 5 has name = \(animal.name)")
    }
}
