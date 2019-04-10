//
//  MvpAssembly.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 11/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class MvpAssembly {
    
    static func assembleAnimalList() -> UIViewController {
        
        /// Model
        let animalListRepository = AnimalListRepository()
        
        /// View
        let animalListCollectionViewDataSource = AnimalListCollectionViewDataSource()
        let animalListCollectionViewDelegate = AnimalListCollectionViewDelegate()
        
        let animalCollectionView = AnimalCollectionView.create()
        animalCollectionView.dataSource = animalListCollectionViewDataSource
        animalCollectionView.delegate = animalListCollectionViewDelegate
        
        let animalListView = AnimalListViewController()
        animalListView.animalListCollectionView = animalCollectionView
        animalListView.animalListCollectionViewDataSource = animalListCollectionViewDataSource
        animalListView.animalListCollectionViewDelegate = animalListCollectionViewDelegate
        
        /// Presenter
        let animalListPresenter = AnimalListPresenter(animalListView, animalListRepository)
        
        animalListView.presenter = animalListPresenter
        
        return animalListView
    }
    
    static func assembleAnimalDetails(animalId: Int) -> UIViewController {
        
        /// Model
        let animalListRepository = AnimalListRepository()
        let animal = animalListRepository.getAnimalWithId(animalId)
        
        /// View
        let animalDetailsViewController = AnimalDetailsViewController()
        
        /// Presenter
        let animalDetailsPresenter = AnimalDetailsPresenter(animalDetailsViewController, animal)
        
        animalDetailsViewController.presenter = animalDetailsPresenter
        
        return animalDetailsViewController
    }
}
