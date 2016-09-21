//
//  MapMapPresenter.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 22/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

class MapPresenter {
    weak var view: MapViewInput!
    var city: City!
}

// MARK: - Module Input
extension MapPresenter: MapModuleInput {
    func set(city: City) {
        self.city = city
    }
}

// MARK: - View Output
extension MapPresenter: MapViewOutput {
    func viewIsReady() {
        view.setupInitialState(city: self.city)
    }
}
