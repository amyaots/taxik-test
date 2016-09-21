//
//  NetworkingType.swift
//  AutoAngel-Customer
//
//  Created by Myaots Alexandr on 22.08.16.
//  Copyright © 2016 SMediaLink. All rights reserved.
//

import PromiseKit
import ObjectMapper

protocol NetworkingType {
    func requestObject<ObjectType: Mappable>(URLString: String) -> Promise<ObjectType>
}
