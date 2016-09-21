//
//  CityServiceType.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21.09.16.
//  Copyright © 2016 Aleksandr Myaots. All rights reserved.
//

import PromiseKit

protocol CityServiceType {
    func getCities() -> Promise<Cities>
}
