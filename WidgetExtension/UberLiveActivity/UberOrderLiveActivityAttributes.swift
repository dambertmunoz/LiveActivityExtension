//
//  UberOrderLiveActivityAttributes.swift
//  ExtensionAppgroup
//
//  Created by Dambert M. on 27/07/24.
//

import Foundation
import ActivityKit
import WidgetKit

public struct UberOrderLiveActivityAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        var driverName: String
        var carModel: String
        var pickupTime: String

        public init(driverName: String, carModel: String, pickupTime: String) {
            self.driverName = driverName
            self.carModel = carModel
            self.pickupTime = pickupTime
        }
    }

    public var rideID: String

    public init(rideID: String) {
        self.rideID = rideID
    }
}

struct UberOrderActivityEntry: TimelineEntry {
    let date: Date
    let driverName: String
    let carModel: String
    let pickupTime: String

    init(from contentState: UberOrderLiveActivityAttributes.ContentState) {
        self.date = Date()
        self.driverName = contentState.driverName
        self.carModel = contentState.carModel
        self.pickupTime = contentState.pickupTime
    }
}
