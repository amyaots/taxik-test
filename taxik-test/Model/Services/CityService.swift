//
//  CityService.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21.09.16.
//  Copyright © 2016 Aleksandr Myaots. All rights reserved.
//

import PromiseKit

class CityService: CityServiceType {
    
    var cityRepo: CityRepositoryType
    
    init(cityRepo: CityRepositoryType) {
        self.cityRepo = cityRepo
    }
    
    func getCities() -> Promise<Cities> {
        return cityRepo.getCities()
    }
}
