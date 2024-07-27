//
//  WidgetExtensionBundle.swift
//  WidgetExtension
//
//  Created by Dambert M. on 26/07/24.
//

import WidgetKit
import SwiftUI


// It's mandatory init all widgets that you have, otherwise you can't see them
@main
struct WidgetExtensionBundle: WidgetBundle {
    var body: some Widget {
        UberOrderLiveActivityWidget()
    }
}
