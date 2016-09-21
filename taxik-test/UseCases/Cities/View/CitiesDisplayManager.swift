//
//  CitiesDisplayManager.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21.09.16.
//  Copyright © 2016 Aleksandr Myaots. All rights reserved.
//

import UIKit

class CitiesDisplayManager: NSObject {
    
    //MARK: - Lifecycle
    
    weak var collectionView: UICollectionView?
    
    var output: CitiesViewOutput
    
    var cities: [City] = [] {
        didSet {
            collectionView?.reloadData()
        }
    }
    
    //MARK: - Init
    
    init(output: CitiesViewOutput, collectionView: UICollectionView) {
        self.collectionView = collectionView
        self.output = output
        super.init()
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension CitiesDisplayManager: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cities.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CityCell", for: indexPath) as! CityCell
        cell.titleLabel.text = cities[indexPath.row].name
        return cell
    }
}

extension CitiesDisplayManager: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print(cities[indexPath.row].name)
        output.open(city: cities[indexPath.row])
    }
}
