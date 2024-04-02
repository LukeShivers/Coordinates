//
//  WelcomeView.swift
//  Coordinates
//
//  Created by Luke Shivers on 3/30/24.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View {
        VStack(spacing: 45) {
            Text("Welcome to Location Finder")
                .font(.system(size: 36, weight: .bold, design: .default))
                .foregroundStyle(.white)
            
            Text("Please share your current location to get coordinates. 📍")
                .font(.system(size: 16, weight: .regular, design: .default))
                .foregroundStyle(.white)
    
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .multilineTextAlignment(.center)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
