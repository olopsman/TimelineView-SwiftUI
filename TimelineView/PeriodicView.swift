//
//  PeriodicView.swift
//  TimelineView
//
//  Created by Paulo Orquillo on 29/05/22.
//

import SwiftUI

struct PeriodicView: View {
    var body: some View {
        TimelineView(.periodic(from: .now, by: 1/60)) { context in
            Text("\(context.date)")
        }
    }
}

struct AnalogView_Previews: PreviewProvider {
    static var previews: some View {
        PeriodicView()
    }
}
