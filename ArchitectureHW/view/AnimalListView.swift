//
//  AnimalListView.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 09/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalListView : NSObject, UICollectionViewDataSource {
    
    var view: UIView?

    fileprivate let animalDataSource = AnimalListRepository().getAnimalList()
    
    fileprivate lazy var animalsCollectionView: UICollectionView = {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.itemSize = CGSize(width: 370, height: 275)
        collectionViewLayout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: collectionViewLayout)
        collectionView.dataSource = self
        collectionView.register(AnimalCollectionViewCell.self, forCellWithReuseIdentifier: "AnimalCollectionViewCell")
        collectionView.backgroundColor = UIColor.lightText
        
        return collectionView
    }()
    
    init(_ view: UIView?) {
        super.init()
        self.view = view
        view?.backgroundColor = UIColor.red
        view?.addSubview(animalsCollectionView)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animalDataSource.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let animal = animalDataSource[indexPath.row]
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AnimalCollectionViewCell", for: indexPath) as? AnimalCollectionViewCell {
            
            cell.animalNameLabel.text = animal.name
            cell.animalShortDescriptionLabel.text = animal.shortDescription
            cell.animalImage.backgroundColor = animal.placeholderColor
            return cell
        }
        
        return UICollectionViewCell()
    }
    
    func viewDidLayoutSubviews() {
        animalsCollectionView.frame = CGRect(x: 0, y: 40, width: view?.frame.width ?? 0, height: (view?.frame.height ?? 0) - 40)
    }
}
