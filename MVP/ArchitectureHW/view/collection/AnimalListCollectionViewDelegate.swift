//
//  AnimalListCollectionViewDelegate.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 11/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalListCollectionViewDelegate: NSObject, UICollectionViewDelegate {
    
    var navigationController: UINavigationController?

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let animalDetailsViewController = MvpAssembly.assembleAnimalDetails(animalId: indexPath.row + 1)
        
        self.navigationController?.pushViewController(animalDetailsViewController, animated: true)
    }
}
