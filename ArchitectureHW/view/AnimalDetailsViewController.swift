//
//  AnimalDetailsViewController.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 10/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalDetailsViewController: UIViewController, AnimalDetailsView {
    
    var presenter: AnimalDetailsPresenter?
    
    let someLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.showAnimalDetails()
    }
    
    func showAnimalDetails(_ animal: Animal) {
        someLabel.frame = CGRect(x: 50, y: 100, width: 200, height: 20)
        someLabel.text = animal.name
        someLabel.textColor = UIColor.white
        view.backgroundColor = Values.animalViewBackgroundColor
        
        view.addSubview(someLabel)
    }
}
