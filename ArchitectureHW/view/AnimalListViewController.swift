//
//  AnimalListView.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 09/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalListViewController : UIViewController, AnimalListView {
    
    var presenter: AnimalListPresenter?
    
    var animalListCollectionView: UICollectionView?
    var animalListCollectionViewDataSource: AnimalListCollectionViewDataSource?
    var animalListCollectionViewDelegate: AnimalListCollectionViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prepareCollectionView()
        
        animalListCollectionViewDelegate?.navigationController = navigationController /**< Navigation */
        
        view.backgroundColor = UIColor.black
        presenter?.showAnimalList()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        animalListCollectionView?.frame = CGRect(x: 0, y: 40, width: view?.frame.width ?? 0, height: (view?.frame.height ?? 0) - 40)
    }
    
    private func prepareCollectionView() {
        animalListCollectionView = AnimalCollectionView.create()
        animalListCollectionView?.dataSource = animalListCollectionViewDataSource
        animalListCollectionView?.delegate = animalListCollectionViewDelegate
    }
    
    /// AnimalListView protocol method
    func showAnimalList(_ list: [Animal]) {
        animalListCollectionViewDataSource?.animalDataSource = list
        view.addSubview(animalListCollectionView!)
    }
}
