//
//  LabelCell.swift
//  CompositionalLayout
//
//  Created by Rahul Thengadi on 10/02/22.
//

import UIKit

class LabelCell: UICollectionViewCell {
    
    public lazy var textLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    // coming from programatic UI setup
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    // coming from Storyboard
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    // helper initializer method
    private func commonInit() {
        textLabelConstraints()
    }
    
    private func textLabelConstraints() {
        // 1
        addSubview(textLabel)
        
        // 2
        // we will handle layout using Auto Layout not autoresizing mask
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // 3
        // setup required constraints
        NSLayoutConstraint.activate([
            textLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
        ])
    }
}
