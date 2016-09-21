//
//  CitiesCitiesPresenter.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

import Foundation

class CitiesPresenter {
    weak var view: CitiesViewInput!
    var interactor: CitiesInteractorInput!
    var router: CitiesRouterInput!

}

// MARK: - Module Input
extension CitiesPresenter: CitiesModuleInput {
	
}

// MARK: - View Output
extension CitiesPresenter: CitiesViewOutput {
    func viewIsReady() {
        interactor.getCities()
    }
    
    func open(city: City) {
        router.openMap(city: city)
    }
}

// MARK: - Interactor Output
extension CitiesPresenter: CitiesInteractorOutput {
    func received(cities: [City]) {
        view.display(cities: cities)
    }
    
    func encounteredError(error: Error) {
        if let error = error as? Translatable {
            view?.showError(error: error.translated(locale: Locale.current))
        }
    }
}
