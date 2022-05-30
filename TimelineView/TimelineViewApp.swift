//
//  TimelineViewApp.swift
//  TimelineView
//
//  Created by Paulo Orquillo on 29/05/22.
//

import SwiftUI

@main
struct TimelineViewApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Text("Animation")
                    }
                AnimationPauseView()
                    .tabItem {
                        Text("Pause")
                    }
                AnimationSecondsView()
                    .tabItem {
                        Text("Cadence")
                    }
                PeriodicView()
                    .tabItem {
                        Text("Periodic")
                    }
                PeriodIc2View()
                    .tabItem {
                        Text("Periodic 2")
                    }
                CustomSchedulerView()
                    .tabItem {
                        Text("Scheduler")
                    }
            }
        }
    }
}
