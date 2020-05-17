//
//  AnimalCollectionView.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 11/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalCollectionView {
    
    static func create() -> UICollectionView {
        let collectionViewLayout = UICollectionViewFlowLayout()
        collectionViewLayout.itemSize = CGSize(width: 370, height: 275)
        collectionViewLayout.minimumInteritemSpacing = 0
        let collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: collectionViewLayout)
        collectionView.register(AnimalCollectionViewCell.self,
                                forCellWithReuseIdentifier: AnimalCollectionViewEnum.Cell.reuseId)
        collectionView.backgroundColor = UIColor.lightText
        
        return collectionView
    }
}
