//
//  UberOrderLiveActivityWidget.swift
//  ExtensionAppgroup
//
//  Created by Dambert M. on 27/07/24.
//

import Foundation
import SwiftUI
import WidgetKit

struct UberOrderLiveActivityWidget: Widget {
    let kind: String = "UberOrderLiveActivityView"

    var body: some WidgetConfiguration {
        ActivityConfiguration(for: UberOrderLiveActivityAttributes.self) { context in
            let entry = UberOrderActivityEntry(from: context.state)
            UberOrderLiveActivityView(entry: entry)
        } dynamicIsland: { context in
            DynamicIsland {
                DynamicIslandExpandedRegion(.leading) {
                    let entry = UberOrderActivityEntry(from: context.state)
                    UberOrderLiveActivityView(entry: entry)
                }
            } compactLeading: {
                Text("Uber")
            } compactTrailing: {
                Text("2 min")
            } minimal: {
                Text("2")
            }
        }
    }
}
