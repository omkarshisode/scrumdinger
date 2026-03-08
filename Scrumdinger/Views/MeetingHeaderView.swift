//
//  MeetingHeaderView.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 08/03/26.
//

import SwiftUI
import ThemeKit
import TimerKit

struct MeetingHeaderView: View {
    let secondElapsed: Int
    let secondRemaining: Int
    let theme: Theme
    
    private var totalSeconds: Int {
        secondElapsed + secondRemaining
    }
    
    private var progress: Double {
        guard totalSeconds > 0 else { return 1 }
        return Double(secondElapsed) / Double(totalSeconds)
    }
    
    private var minutesRemaining: Int {
        secondRemaining / 60
    }
    
    var body: some View {
        // Progress View
        VStack {
            ProgressView(value: progress, total: 10)
                .progressViewStyle(ScrumProgressViewStyle(theme: theme))
            
            // Time Elapsed and Remaining
            HStack {
                VStack(alignment: .leading){
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("\(secondElapsed)", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("\(secondRemaining)", systemImage: "hourglass.bottomhalf.fill")
                        .labelStyle(.trailingIcon)
                }
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("Time remaining")
        .accessibilityValue("\(minutesRemaining) minutes")
        .padding([.top, .horizontal])
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    MeetingHeaderView(secondElapsed: 60, secondRemaining: 180, theme: Theme.magenta)
}
