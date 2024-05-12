//
//  CartCollectionViewCell.swift
//  book
//
//  Created by 김준철 on 5/12/24.
//

import Foundation
class CartCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CartCollectionViewCell"
    
        let imageView: UIImageView = {
            let imageView = UIImageView()
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            return imageView
        }()
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            
            addSubview(imageView)
            imageView.frame = bounds
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            imageView.frame = bounds
        }
}
