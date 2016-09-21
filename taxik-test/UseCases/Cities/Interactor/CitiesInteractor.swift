//
//  CitiesCitiesInteractor.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21/09/2016.
//  Copyright © 2016 Myaots. All rights reserved.
//

class CitiesInteractor: CitiesInteractorInput {

    weak var output: CitiesInteractorOutput!
    
    var cityService: CityServiceType!
    
    func getCities() {
        cityService.getCities().then { cities -> Void in
            self.output.received(cities: cities.data)
        }.catch { error in
            self.output.encounteredError(error: error)
        }
    }
}
