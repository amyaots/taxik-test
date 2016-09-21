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
    
    
    //MARK: - Init
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        self.ID <- map["city_id"]
        self.name <- map["city_name"]
    }
}

/*
 city_id: 2,
 city_name: "Санкт-Петербург",
 city_api_url: "http://piter.beta.taxistock.ru/taxik/api/client/",
 city_domain: "piter.beta.taxistock.ru",
 city_mobile_server: "protobuf.taxistock.ru:7788",
 city_doc_url: "http://piter.beta.taxistock.ru/taxik/api/doc/",
 city_latitude: 59.99349213,
 city_longitude: 30.2890625,
 city_spn_latitude: 0.84036398,
 city_spn_longitude: 3.01300001,
 last_app_android_version: 7045,
 android_driver_apk_link: "http://www.taxik.ru/a/taxik.apk",
 transfers: false,
 client_email_required: true,
 registration_promocode: false
 */
