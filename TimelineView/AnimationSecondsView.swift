//
//  AnimationSecondsView.swift
//  TimelineView
//
//  Created by Paulo Orquillo on 29/05/22.
//

import SwiftUI

struct AnimationSecondsView: View {
    var body: some View {
        TimelineView(.animation) { context in
                    let date = context.date
                    let value = context.cadence <= .live ?
                        nanosValue(for: date): secondsValue(for: date)

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

    private func nanosValue(for date: Date) -> Double {
        let seconds = Calendar.current.component(.second, from: date)
        let nanos = Calendar.current.component(.nanosecond, from: date)
        return Double(seconds * 1_000_000_000 + nanos) / 60_000_000_000
    }
}

struct AnimationSecondsView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationSecondsView()
    }
}
