//
//  NetworkModelAssembly.swift
//  AutoAngel-Customer
//
//  Created by Aleksandr Myaots on 12.09.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import Swinject

class NetworkModelAssembly: AssemblyType {
    func assemble(container: Container) {
        container.register(NetworkingType.self) { (r) in
            return AlamofireNetworking()
        }.inObjectScope(.hierarchy)
    }
}
