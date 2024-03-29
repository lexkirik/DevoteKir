//
//  DevoteKirWidgetLiveActivity.swift
//  DevoteKirWidget
//
//  Created by Test on 28.09.23.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct DevoteKirWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct DevoteKirWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: DevoteKirWidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension DevoteKirWidgetAttributes {
    fileprivate static var preview: DevoteKirWidgetAttributes {
        DevoteKirWidgetAttributes(name: "World")
    }
}

extension DevoteKirWidgetAttributes.ContentState {
    fileprivate static var smiley: DevoteKirWidgetAttributes.ContentState {
        DevoteKirWidgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: DevoteKirWidgetAttributes.ContentState {
         DevoteKirWidgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: DevoteKirWidgetAttributes.preview) {
   DevoteKirWidgetLiveActivity()
} contentStates: {
    DevoteKirWidgetAttributes.ContentState.smiley
    DevoteKirWidgetAttributes.ContentState.starEyes
}
