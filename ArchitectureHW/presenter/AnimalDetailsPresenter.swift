//
//  AnimalDetailsPresenter.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 10/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalDetailsPresenter {

    private var animal: Animal
    private unowned var animalDetailsView: AnimalDetailsView
    
    init(_ animalDetailsView: AnimalDetailsView, _ animal: Animal) {
        self.animal = animal
        self.animalDetailsView = animalDetailsView
    }
    
    func showAnimalDetails() {
        animalDetailsView.showAnimalDetails(animal)
    }
}
