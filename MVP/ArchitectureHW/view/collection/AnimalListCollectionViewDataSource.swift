//
//  AnimalListCollectionViewDataSource.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 10/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalListCollectionViewDataSource : NSObject, UICollectionViewDataSource {
    
    var animalDataSource: [Animal]?
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animalDataSource?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if (animalDataSource == nil) {
            return UICollectionViewCell()
        }
        
        let animal = animalDataSource![indexPath.row]
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: AnimalCollectionViewEnum.Cell.reuseId, for: indexPath) as? AnimalCollectionViewCell {
            
            cell.animalNameLabel.text = animal.name
            cell.animalShortDescriptionLabel.text = animal.shortDescription
            cell.animalImage.backgroundColor = animal.placeholderColor
            return cell
        }
        
        return UICollectionViewCell()
    }
}
