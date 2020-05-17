//
//  AnimalCollectionViewCell.swift
//  ArchitectureHW
//
//  Created by Maksim Ivanov on 09/04/2019.
//  Copyright © 2019 Maksim Ivanov. All rights reserved.
//

import UIKit

class AnimalCollectionViewCell: UICollectionViewCell {
    
    let animalNameLabel = UILabel()
    let animalShortDescriptionLabel = UILabel()
    let animalImage = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.backgroundColor = Values.animalViewBackgroundColor
        animalNameLabel.textColor = UIColor.white
        animalNameLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
        addSubview(animalNameLabel)
        
        animalShortDescriptionLabel.textColor = UIColor.white
        animalShortDescriptionLabel.numberOfLines = 0
        addSubview(animalShortDescriptionLabel)
        
        addSubview(animalImage)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let fullSize = self.contentView.frame.size
        let fullWidth = fullSize.width
        let fullHeight = fullSize.height
        let padding = CGFloat(6)
        let labelWidth = fullWidth - 2.0 * padding
        animalNameLabel.frame = CGRect(x: padding, y: fullHeight - 67, width: labelWidth, height: 18)
        animalShortDescriptionLabel.frame = CGRect(x: padding, y: fullHeight - 50, width: labelWidth, height: 50)
        animalImage.frame = CGRect(x: 10, y: 10, width: labelWidth - 8, height: fullHeight - 84)
    }
}
