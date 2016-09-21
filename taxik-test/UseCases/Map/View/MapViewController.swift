//
//  MapMapViewController.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 22/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: BaseViewController {

    //MARK: - Properties

    weak var assembler = ViperAssembler<MapModuleAssembly>()

    var output: MapViewOutput!

    @IBOutlet weak var mapView: GMSMapView!
    
    var displayManager: MapDisplayManager!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayManager = MapDisplayManager(mapView: mapView)
        
        output.viewIsReady()
    }
}

// MARK: - View Input

extension MapViewController: MapViewInput {
    func setupInitialState(city: City) {
        navigationItem.title = city.name
        displayManager.display(city: city)
    }
}

//MARK: - ModuleInputeProvider

extension MapViewController: ModuleInputProvider {
    var moduleInput: ModuleInput! {
        return output as? ModuleInput
    }
}
