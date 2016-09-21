//
//  City.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 21.09.16.
//  Copyright © 2016 Aleksandr Myaots. All rights reserved.
//

import ObjectMapper

class City: Mappable {
    
    //MARK: - Properties
    
    struct ExperimentalEconom {
        var data = 0
        var time = 0
        var fixRate = 0
    }
    
    var ID = 0
    var name = ""
    var apiURL = ""
    var domain = ""
    var mobileServer = ""
    var docURL = ""
    var latitude = 0.0
    var longitude = 0.0
    var spnLatitude = 0.0
    var spnLongitude = 0.0
    var lastAppAndroidVersion = 0
    var androidDriverApkLink = ""
    var transfers = false
    var clientEmailRequired = false
    var registrationProcode = false
    var parentCity = 0
    var cardProcessing = CardProcessing()
    var expEconom = ExperimentalEconom()
    var inappPayMethods: [String] = []
    
    //MARK: - Init
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        self.ID                     <- map["city_id"]
        self.name                   <- map["city_name"]
        self.apiURL                 <- map["city_api_url"]
        self.domain                 <- map["city_domain"]
        self.mobileServer           <- map["city_mobile_server"]
        self.docURL                 <- map["city_doc_url"]
        self.latitude               <- map["city_latitude"]
        self.longitude              <- map["city_longitude"]
        self.spnLatitude            <- map["city_spn_latitude"]
        self.spnLongitude           <- map["city_spn_longitude"]
        self.lastAppAndroidVersion  <- map["last_app_android_version"]
        self.androidDriverApkLink   <- map["android_driver_apk_link"]
        self.transfers              <- map["transfers"]
        self.clientEmailRequired    <- map["client_email_required"]
        self.registrationProcode    <- map["registration_promocode"]
        self.expEconom.data         <- map["experimental_econom_plus"]
        self.expEconom.time         <- map["experimental_econom_plus_time"]
        self.expEconom.fixRate      <- map["experimental_econom_plus_fix_rate"]
        self.cardProcessing         <- map["card_processing"]
        self.parentCity             <- map["parentCity"]
    }
}

