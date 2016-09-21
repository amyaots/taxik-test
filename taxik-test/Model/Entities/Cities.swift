//
//  Cities.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 22.09.16.
//  Copyright © 2016 Aleksandr Myaots. All rights reserved.
//

import ObjectMapper

class Cities: Mappable {
    
    //MARK: - Properties
    
    var data = [City]()
    
    //MARK: - Init 
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        self.data <- map["cities"]
    }
}
