//
//  ViewController.swift
//  CompositionalLayout
//
//  Created by Rahul Thengadi on 10/02/22.
//

import UIKit

class GridViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView! // default is flow layout
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureCollectionView()
    }

    // 1
    private func createLayout() -> UICollectionViewLayout {
        
        // 1
        // create and configure the item
        // item takes up 25% of the groups's width
        // item takes up 100% of the group's height
        let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.25), heightDimension: .fractionalHeight(1.0))
        let item = NSCollectionLayoutItem(layoutSize: itemSize)
        
        // 2
        // create and configure the group
        // group takes up 100% of the section width
        // group's height is 25% of the section's width
        let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalWidth(0.25))
        let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        
        // 3
        // configure the section
        let section = NSCollectionLayoutSection(group: group)
        
        // 4
        // configure the layout
        let layout = UICollectionViewCompositionalLayout(section: section)
        return layout
    }
    
    // 2
    private func configureCollectionView() {
        // collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: createLayout())
        
        // change collectionView's layout
        // do this if using Storyboard to layout your collection view
        // sice Storyboard does not support compositional layout
        collectionView.collectionViewLayout = createLayout() // from flow layout to compositional layout
        collectionView.backgroundColor = .systemYellow
    }
}

