//
//  LocationManager.swift
//  CoreLocationMe
//
//  Created by Madalin Zaharia on 15.05.2023.
//

import CoreLocation
import Foundation

class LocationManager: NSObject, ObservableObject {
    
    private let locationManageer = CLLocationManager()
    @Published var status: CLAuthorizationStatus?
    @Published var current: CLLocation?
    
    override init() {
        super.init()
        
        self.locationManageer.delegate = self
        self.locationManageer.distanceFilter = 10
        self.locationManageer.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManageer.requestAlwaysAuthorization()
        self.locationManageer.startUpdatingLocation()
    }
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        status = manager.authorizationStatus
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else {
            return
        }
        self.current = location
    }
}
