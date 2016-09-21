//
//  MapMapAssembly.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 22/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

import UIKit
import Swinject

class MapModuleAssembly: ViperModuleAssembly {
    required init() {}

    func assemble(container: Container) {
        // View
        container.registerForStoryboard(MapViewController.self) { (r, c) in
            c.output = r.resolve(MapModuleInput.self, argument: c) as! MapViewOutput
        }
        
        // Presenter
        container.register(MapModuleInput.self) { (r, c: MapViewController) in
            let presenter =  MapPresenter()
            presenter.view = c
            return presenter
        }
    }
}

