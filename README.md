# Uber-Style Live Activity Demo

SwiftUI and WidgetKit sample that demonstrates an Uber-style ride status Live Activity with Dynamic Island support.

The project is structured as a small app plus a widget extension so the ActivityKit model, Live Activity lifecycle operations, and widget rendering can be inspected separately.

## What This Project Shows

- ActivityKit attributes for a ride/order flow.
- SwiftUI app controls for starting and updating a Live Activity.
- Widget extension rendering for lock screen and Dynamic Island states.
- Shared visual assets between the app and extension.
- A compact example that pairs with the related Medium walkthrough.

## Main Modules

| Path | Responsibility |
| --- | --- |
| `ExtensionAppgroup/ContentView.swift` | Demo app UI |
| `ExtensionAppgroup/UberRideOperations.swift` | Start/update/end Live Activity operations |
| `WidgetExtension/UberLiveActivity/UberOrderLiveActivityAttributes.swift` | ActivityKit data contract |
| `WidgetExtension/UberLiveActivity/UberOrderLiveActivityView.swift` | SwiftUI Live Activity view |
| `WidgetExtension/UberLiveActivity/UberOrderLiveActivityWidget.swift` | Widget entry point |

## Requirements

- Xcode with ActivityKit support.
- iOS 16.1+ for Live Activities.
- A simulator or device that supports Dynamic Island previews for the expanded UI states.

## Running

```sh
open ExtensionAppgroup.xcodeproj
```

Run the `ExtensionAppgroup` scheme, then use the app controls to start/update the Live Activity.

## Related Article

[Creating a basic Live Activity for an Uber-like app on iOS](https://medium.com/@dmsantillana2705/creating-a-basic-live-activity-for-an-uber-like-app-on-ios-part-1-cc738506d723)

## Technical Notes

- The README intentionally avoids private GitHub image URLs because those expire and break public rendering.
- Keep the ActivityKit attributes stable; they are the contract between the app and widget extension.
- For production use, updates should come from the real ride/order state machine, not from manual demo buttons.
