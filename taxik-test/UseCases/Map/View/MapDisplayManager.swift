//
//  MapDisplayManager.swift
//  taxik-test
//
//  Created by Aleksandr Myaots on 22.09.16.
//  Copyright © 2016 Aleksandr Myaots. All rights reserved.
//

import UIKit
import GoogleMaps

class MapDisplayManager: NSObject {
    
    //MARK: - Properties
    
    weak var mapView: GMSMapView?
    
    //MARK: - Init
    
    init(mapView: GMSMapView) {
        self.mapView = mapView
        super.init()
    }
    
    func display(city: City) {
        let position = CLLocationCoordinate2DMake(city.latitude, city.longitude)
        mapView?.camera = GMSCameraPosition(target: position, zoom: 10, bearing: 0, viewingAngle: 0)
        let marker = GMSMarker(position: position)
        marker.title = city.name
        marker.snippet = city.domain
        marker.map = mapView
    }
}

