//
//  PeriodIc2View.swift
//  TimelineView
//
//  Created by Paulo Orquillo on 30/05/22.
//

import SwiftUI

struct PeriodIc2View: View {
    var body: some View {
        TimelineView(.periodic(from: .now, by: 1)) { context in
            let date = context.date
            let seconds = Calendar.current.component(.second, from: date)
            
            Circle()
                .trim(from: Double(seconds) / 60.0, to: 1)
                .stroke(Color.green, lineWidth: 12)
        }
        .rotationEffect(Angle(degrees: 270))
        .padding(60)
    }
}

struct PeriodIc2View_Previews: PreviewProvider {
    static var previews: some View {
        PeriodIc2View()
    }
}
