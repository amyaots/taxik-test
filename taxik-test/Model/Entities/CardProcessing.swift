//
//  CardProcessing.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21.09.16.
//  Copyright © 2016 Aleksandr Myaots. All rights reserved.
//

import ObjectMapper

class CardProcessing: Mappable {
    
    //MARK: - Properties
    
    var id = 0
    var manualPayment = false
    
    //MARK: - Init
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        self.id <- map["id"]
        self.manualPayment <- map["manual_payment"]
    }
}
