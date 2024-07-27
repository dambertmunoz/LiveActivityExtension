//
//  ContentView.swift
//  ExtensionAppgroup
//
//  Created by Dambert M. on 26/07/24.
//

import SwiftUI
import WidgetExtensionExtension

struct ContentView: View {
    @State private var rideID = "27050505"
    @State private var driverName = "Dambert M."
    @State private var carModel = "Toyota F."
    @State private var pickupTime = "2 min"

    var body: some View {
        VStack(spacing: 20) {

            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Image("profilepng2") // Ensure this matches the name in your asset catalog
                        .resizable()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                        .shadow(radius: 5)
                    VStack(alignment: .leading) {
                        Text("Driver: \(driverName)")
                            .font(.headline)
                        Text("Car: \(carModel)")
                            .font(.subheadline)
                        Text("Pickup in \(pickupTime)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.black.opacity(0.9))
                    }
                    Spacer()
                    Image("uberpng") // Ensure this matches the name in your asset catalog
                        .resizable()
                        .frame(width: 50, height: 50)
                        .shadow(radius: 5)
                }
            }
            .padding()
            .background(Color(UIColor.systemGray6))
            .cornerRadius(10)
            .shadow(radius: 5)

            HStack {
                Button(action: {
                    startRideShareActivity(rideID: rideID, driverName: driverName, carModel: carModel, pickupTime: pickupTime)
                }) {
                    Text("Start Ride")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }

                Button(action: {
                    // Update ride information for demonstration purposes
                    pickupTime = "1 min"
                    updateRideShareActivity(activityID: rideID, driverName: driverName, carModel: carModel, pickupTime: pickupTime)
                }) {
                    Text("Update")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }

                Button(action: {
                    endRideShareActivity(activityID: rideID)
                }) {
                    Text("Complete")
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .shadow(radius: 5)
                }
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity)
        }
        .padding()
        .background(Color(UIColor.systemGray5).edgesIgnoringSafeArea(.all))
    }
}

#Preview {
    ContentView()
}
