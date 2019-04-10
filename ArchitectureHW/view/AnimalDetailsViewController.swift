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
    
    let animalNameLabel = UILabel()
    let animalShortDescriptionLabel = UILabel()
    let animalImage = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter?.showAnimalDetails()
    }
    
    func showAnimalDetails(_ animal: Animal) {
        animalNameLabel.text = animal.name
        animalShortDescriptionLabel.text = animal.shortDescription
        animalImage.backgroundColor = animal.placeholderColor
        
        let fullSize = self.view.frame.size
        let fullWidth = fullSize.width
        let fullHeight = fullWidth * 0.75
        let padding = CGFloat(6)
        let labelWidth = fullWidth - 2.0 * padding
        animalNameLabel.frame = CGRect(x: 14, y: 6 + fullHeight, width: labelWidth, height: 18)
        animalShortDescriptionLabel.frame = CGRect(x: 14, y: fullHeight + 20, width: labelWidth, height: 50)
        animalImage.frame = CGRect(x: 10, y: 75, width: labelWidth - 8, height: fullHeight - 84)
        
        view.backgroundColor = Values.animalViewBackgroundColor
        animalNameLabel.textColor = UIColor.white
        animalNameLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
        view.addSubview(animalNameLabel)
        
        animalShortDescriptionLabel.textColor = UIColor.white
        animalShortDescriptionLabel.numberOfLines = 0
        view.addSubview(animalShortDescriptionLabel)
        
        view.addSubview(animalImage)
    }
}
