//
//  CitiesCitiesViewController.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

import UIKit

class CitiesViewController: BaseViewController {

    //MARK: - Properties

    weak var assembler = ViperAssembler<CitiesModuleAssembly>()

    var output: CitiesViewOutput!
    
    var displayManager: CitiesDisplayManager!

    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayManager = CitiesDisplayManager(output: output, collectionView: collectionView)
        
        output.viewIsReady()
    }
}

// MARK: - View Input

extension CitiesViewController: CitiesViewInput {
    
    func display(cities: [City]) {
        displayManager.cities = cities
    }
}

//MARK: - ModuleInputeProvider

extension CitiesViewController: ModuleInputProvider {
    var moduleInput: ModuleInput! {
        return output as? ModuleInput
    }
}
