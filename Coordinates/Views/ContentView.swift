//
//  ContentView.swift
//  Coordinates
//
//  Created by Luke Shivers on 3/29/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            if let location = locationManager.location {
                VStack {
                    Text("Latitude: \(location.latitude)")
                    Text("Longitude: \(location.longitude)")
                }
                .foregroundColor(.white)
                .font(.system(size: 26, weight: .medium, design: .default))
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(5)
            } else {
                if locationManager.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
        .padding()
        .background(.black)
    }
}

#Preview {
    ContentView()
}
