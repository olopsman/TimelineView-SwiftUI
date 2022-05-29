//
//  CustomSchedulerView.swift
//  TimelineView
//
//  Created by Paulo Orquillo on 29/05/22.
//

import SwiftUI

struct CustomSchedulerView: View {
    var body: some View {
        TimelineView(.daily) { context in
                    let value = dayValue(for: context.date)

                    Circle()
                        .trim(from: 0, to: value)
                        .stroke()
                }
    }
    private func dayValue(for date: Date) -> Double {
            let day = Calendar.current.component(.day, from: date)
            return Double(day) / 30
        }
}

struct DailyView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSchedulerView()
    }
}

final class DailySchedule: TimelineSchedule {
    typealias Entries = [Date]

    func entries(from startDate: Date, mode: Mode) -> Entries {
        (1...30).map { startDate.addingTimeInterval(Double($0 * 24 * 3600)) }
    }
}

extension TimelineSchedule where Self == DailySchedule {
    static var daily: Self { .init() }
}

