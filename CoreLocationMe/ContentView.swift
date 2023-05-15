//
//  ContentView.swift
//  CoreLocationMe
//
//  Created by Madalin Zaharia on 15.05.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    @ObservedObject private var locationManager = LocationManager()
    
    // MARK: - Body
    var body: some View {
        VStack(spacing: 24) {
            Text("Status \(locationManager.status.description)")
            VStack {
                Text("Latitude \(locationManager.current.latitudeDescription)")
                Text("Longitude \(locationManager.current.longitudeDescription)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
