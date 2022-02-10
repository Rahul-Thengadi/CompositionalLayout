# Introduction to UICollectionViewCompositionalLayout

## Compositional Layout System

Item -> Group -> Section -> Layout

## Vocabulary
* NSCollectionLayoutSize
* NSCollectionLayoutItem
* NSCollectionLayoutGroup
* NSCollectionLayoutSection

## Describing the size of an item

The size is of type `NSCollectionLayoutDimension`

* .fractionalWidth
* .fractionalHeight
* .absolute(point based values e.g 200 points)
* .estimated(will start with an estimation and grow accordingly)

## NSCollectionLayoutGroup

There are three ways to layout

* Horizontal
* Vertical
* Custom

## Resources

1. [Apple docs - UICollectionViewCompositionalLayout](https://developer.apple.com/documentation/uikit/uicollectionviewcompositionallayout)
2. [WWDC 2019 - Advances in Collection View Layout](https://developer.apple.com/videos/play/wwdc2019/215/)
