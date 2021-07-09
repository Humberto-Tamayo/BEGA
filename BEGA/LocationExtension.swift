//
//  LocationExtension.swift
//  SeeFood-CoreML
//
//  Created by Humberto Tamayo on 08/07/21.
//  Copyright © 2021 Angela Yu. All rights reserved.
//

import UIKit
import CoreML
import Vision
import Social
import CoreLocation

//MARK: - CLLocationManagerDelegate

extension ViewController {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            print("Got location data")
            let lat = location.coordinate.latitude
            let lon = location.coordinate.longitude
            print(lat)
            print(lon)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error in location:")
        print(error)
    }
    //Estas dos funciones tienen que estar a fuerza, lo dice la documentación
}
