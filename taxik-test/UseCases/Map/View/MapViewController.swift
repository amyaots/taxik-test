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
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }
}

// MARK: - View Input

extension MapViewController: MapViewInput {
    func setupInitialState(city: City) {
    
    }
}

//MARK: - ModuleInputeProvider

extension MapViewController: ModuleInputProvider {
    var moduleInput: ModuleInput! {
        return output as? ModuleInput
    }
}
