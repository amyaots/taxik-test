//
//  MapMapPresenter.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 22/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

class MapPresenter {
    weak var view: MapViewInput!
    var interactor: MapInteractorInput!
    var router: MapRouterInput!

}

// MARK: - Module Input
extension MapPresenter: MapModuleInput {
	
}

// MARK: - View Output
extension MapPresenter: MapViewOutput {
    func viewIsReady() {

    }
}

// MARK: - Interactor Output
extension MapPresenter: MapInteractorOutput {
    
}