//
//  UberRideOperations.swift
//  ExtensionAppgroup
//
//  Created by Dambert M. on 27/07/24.
//

import Foundation
import WidgetExtensionExtension
import ActivityKit


func startRideShareActivity(rideID: String, driverName: String, carModel: String, pickupTime: String) {

    Task {

        let attributes = UberOrderLiveActivityAttributes(rideID: rideID)
        let content = ActivityContent(state: UberOrderLiveActivityAttributes.ContentState(driverName: driverName, carModel: carModel, pickupTime: pickupTime), staleDate: nil)

        do {
            let activity = try Activity<UberOrderLiveActivityAttributes>.request(
                attributes: attributes,
                content: content,
                pushType: nil
            )
            print("Requested a ride share live activity with id: \(activity.id)")
        } catch (let error) {
            print("Error requesting ride share live activity: \(error.localizedDescription)")
        }
    }
}

func updateRideShareActivity(activityID: String, driverName: String, carModel: String, pickupTime: String) {
    let updatedContentState = UberOrderLiveActivityAttributes.ContentState(driverName: driverName, carModel: carModel, pickupTime: pickupTime)
    let updatedContent = ActivityContent(state: updatedContentState, staleDate: nil)

    Task {
        for activity in Activity<UberOrderLiveActivityAttributes>.activities {
            await activity.update(updatedContent)
        }
    }
}


func endRideShareActivity(activityID: String) {
    Task {
        for activity in Activity<UberOrderLiveActivityAttributes>.activities {
            await activity.end(dismissalPolicy: .immediate)
        }
    }
}
