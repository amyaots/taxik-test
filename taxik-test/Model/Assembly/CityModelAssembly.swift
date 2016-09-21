//
//  CityModelAssembly.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21.09.16.
//  Copyright © 2016 Aleksandr Myaots. All rights reserved.
//

import Swinject

class CityModelAssembly: AssemblyType {
    func assemble(container: Container) {
        
        container.register(CityServiceType.self) { (r) in
            let u = r.resolve(CityRepositoryType.self)!
            return CityService(cityRepo: u)
            }.inObjectScope(.hierarchy)
        
        container.register(CityRepositoryType.self) { (r) in
            let n = r.resolve(NetworkingType.self)!
            return CityRepository(networking: n)
            }.inObjectScope(.hierarchy)
    }
}
