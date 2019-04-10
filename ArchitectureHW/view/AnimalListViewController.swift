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
    
    let animalListCollectionViewDataSource = AnimalListCollectionViewDataSource()
    let animalListCollectionViewDelegate = AnimalListCollectionViewDelegate()
    
    fileprivate lazy var animalsCollectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.itemSize = CGSize(width: 370, height: 275)
        collectionViewLayout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: collectionViewLayout)
        collectionView.dataSource = animalListCollectionViewDataSource
        collectionView.delegate = animalListCollectionViewDelegate
        collectionView.register(AnimalCollectionViewCell.self, forCellWithReuseIdentifier: "AnimalCollectionViewCell")
        collectionView.backgroundColor = UIColor.lightText
        
        return collectionView
    }()
    
    /// UIViewController - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.black
        
        animalListCollectionViewDelegate.navigationController = navigationController
        
        presenter?.showAnimalList()
    }
    
    /// UIViewController
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        animalsCollectionView.frame = CGRect(x: 0, y: 40, width: view?.frame.width ?? 0, height: (view?.frame.height ?? 0) - 40)
    }
    
    /// AnimalListView
    func showAnimalList(_ list: [Animal]) {
        animalListCollectionViewDataSource.animalDataSource = list
        view.addSubview(animalsCollectionView)
    }
}
