//
//  UberLiveActivityView.swift
//  ExtensionAppgroup
//
//  Created by Dambert M. on 27/07/24.
//

import Foundation
import WidgetKit
import SwiftUI

struct UberOrderLiveActivityView: View {
    var entry: UberOrderActivityEntry

    var body: some View {
        HStack {
            Image("profilepng2")
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .shadow(radius: 5)
            VStack(alignment: .leading) {
                Text("Driver: \(entry.driverName)")
                    .font(.headline)
                Text("Car: \(entry.carModel)")
                    .font(.subheadline)
                Text("Pickup in \(entry.pickupTime)")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.black.opacity(0.9))
            }
            Spacer()
            Image("uberpng")
                .resizable()
                .frame(width: 50, height: 50)
                .shadow(radius: 5)
        }
        .padding()
    }
}
