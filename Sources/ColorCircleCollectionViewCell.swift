//
//  ColorCircleCollectionViewCell.swift
//  PickerKit-iOS
//
//  Created by Alexandru Turcanu on 31/05/2019.
//  Copyright © 2019 PickerKit. All rights reserved.
//

import UIKit

// MARK: - ColorCircleCollectionViewCell
class ColorCircleCollectionViewCell: UICollectionViewCell {
    override func layoutSubviews() {
        super.layoutSubviews()

        layer.cornerRadius = frame.height / 2
    }
}

extension ColorCircleCollectionViewCell: IdentifiableCell {
    static var identifier: String {
        return String(describing: self)
    }
}

protocol IdentifiableCell {
    static var identifier: String { get }
}
