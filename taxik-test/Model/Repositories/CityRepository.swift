//
//  CityRepository.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21.09.16.
//  Copyright © 2016 Aleksandr Myaots. All rights reserved.
//

import PromiseKit

class CityRepository: CityRepositoryType {
    
    let networking: NetworkingType
    
    init(networking: NetworkingType) {
        self.networking = networking
    }
    
    func getCities() -> Promise<[City]> {
        return networking.requestArray(URLString: "http://beta.taxistock.ru/taxik/api/client/query_cities")
    }
}
