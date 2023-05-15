//
//  Extension.swift
//  CoreLocationMe
//
//  Created by Madalin Zaharia on 15.05.2023.
//

import CoreLocation
import Foundation

extension Optional where Wrapped == CLAuthorizationStatus {
    var description: String {
        guard let self = self else {
            return "Unknown"
        }
        
        switch self {
        case .notDetermined:
            return "notDetermined"
        case .authorizedWhenInUse:
            return "authorizedWhenInUse"
        case .authorizedAlways:
            return "authorizedAlways"
        case .restricted:
            return "restricted"
        case .denied:
            return "denied"
        default:
            return "Unknown"
        }
    }
}


extension Optional where Wrapped == CLLocation {
    var latitudeDescription: String {
        guard let self = self else {
            return "_"
        }
        
        return "\(self.coordinate.latitude)"
    }
    
    var longitudeDescription: String {
        guard let self = self else {
            return  "_"
        }
        
        return "\(self.coordinate.longitude)"
    }
}
