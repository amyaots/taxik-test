//
//  CitiesCitiesPresenter.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

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

    }
}

// MARK: - Interactor Output
extension CitiesPresenter: CitiesInteractorOutput {
    
}