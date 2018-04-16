//
//  Restaurant.swift
//  Final Project
//
//  Created by CM Student on 4/16/18.
//  Copyright © 2018 CM Student. All rights reserved.
//

import UIKit
import MapKit

class Restaurant: NSObject, MKAnnotation{

    let restaurantTitle: String?
    let restaurantType: String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, type: String, coordinate: CLLocationCoordinate2D) {
        self.restaurantTitle = title
        self.restaurantType = type
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String? {
        return restaurantType
    }
}
