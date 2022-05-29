//
//  ContentView.swift
//  TimelineView
//
//  Created by Paulo Orquillo on 29/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //https://developer.apple.com/documentation/swiftui/timelineschedule
        //A pausable schedule of dates updating at a frequency no more quickly than the provided interval.
        TimelineView(.animation) { context in
            let value = secondsValue(for: context.date)
            Circle()
                .trim(from: 0, to: value)
                .stroke()
            Text("\(value)")
        }
    }
    
    private func secondsValue(for date: Date) -> Double {
            let seconds = Calendar.current.component(.second, from: date)
            return Double(seconds) / 60
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
