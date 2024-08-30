//
//  WelcomeView.swift
//  SimpleWeatherApp
//
//  Created by Umman on 30.08.24.
//

import SwiftUI
import CoreLocationUI

struct CustomLocationButton: View
{
    var action: () -> Void
    
    var body: some View {
        Button(action: action)
        {
            HStack
            {
                Image(systemName: "location.fill")
                Text("Share Current Location")
            }
            .padding()
            .background(Color(hue: 1.0, saturation: 0.016, brightness: 0.176))
            .foregroundColor(.white)
            .cornerRadius(30)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct WelcomeView: View
{
    @EnvironmentObject var locationManager: LocationManager
    
    var body: some View
    {
        VStack
        {
            VStack(spacing: 20)
            {
                Text("Welcome to the Weather App")
                    .bold().font(.title)
                
                Text("Please share your current location to get the weather in your area")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding(30)
            
            CustomLocationButton
            {
                locationManager.requestLocation()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {WelcomeView()}
