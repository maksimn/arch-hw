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
    let animalDescriptionLabel = UILabel()
    
    /// UIViewController - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareViews()
        
        presenter?.showAnimalDetails()
    }
    
    /// AnimalDetailsView
    func showAnimalDetails(_ animal: Animal) {
        animalNameLabel.text = animal.name
        animalShortDescriptionLabel.text = animal.shortDescription
        animalImage.backgroundColor = animal.placeholderColor
        animalDescriptionLabel.text = animal.description;
        setupAnimalDescriptionLabelFrame()
    }
    
    func prepareViews() {
        let fullWidth = self.view.frame.size.width
        let fullHeight = fullWidth * 0.75
        let labelWidth = fullWidth - 12.0
        animalNameLabel.frame = CGRect(x: 14, y: 24 + fullHeight, width: labelWidth, height: 18)
        animalShortDescriptionLabel.frame = CGRect(x: 14, y: fullHeight + 37, width: labelWidth, height: 50)
        animalImage.frame = CGRect(x: 10, y: 100, width: labelWidth - 8, height: fullHeight - 84)
        
        view.backgroundColor = Values.animalViewBackgroundColor
        animalNameLabel.textColor = UIColor.white
        animalNameLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
        view.addSubview(animalNameLabel)
        
        animalShortDescriptionLabel.textColor = UIColor.white
        animalShortDescriptionLabel.numberOfLines = 0
        view.addSubview(animalShortDescriptionLabel)
        
        animalDescriptionLabel.textColor = UIColor.white
        animalDescriptionLabel.numberOfLines = 0
        animalDescriptionLabel.sizeToFit()
        view.addSubview(animalDescriptionLabel)
        
        view.addSubview(animalImage)
    }
    
    func setupAnimalDescriptionLabelFrame() {
        let fullWidth = self.view.frame.size.width
        let fullHeight = fullWidth * 0.75
        let labelWidth = fullWidth - 12.0
        animalDescriptionLabel.frame = CGRect(x: 10, y: fullHeight + 81, width: labelWidth, height: 300)
        animalDescriptionLabel.sizeToFit()
    }
}
