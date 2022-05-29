//
//  AnimationPauseView.swift
//  TimelineView
//
//  Created by Paulo Orquillo on 29/05/22.
//

import SwiftUI

struct AnimationPauseView: View {
    @State private var paused = false
    var body: some View {
        TimelineView(.animation(minimumInterval: 1, paused: paused)) { context in
            Text("\(context.date)")
            
            Button(action: {
                self.paused.toggle()
            }) {
                Text(paused ? "Resume" : "Pause Me")
            }
        }
    }
}

struct AnimationPauseView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationPauseView()
    }
}
