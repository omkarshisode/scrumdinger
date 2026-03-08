//
//  MeetingFooterView.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 08/03/26.
//

import SwiftUI
import TimerKit

struct MeetingFooterView: View {
    let speakers: [ScrumTimer.Speaker]
    let skipAction: () -> Void
    
    private var speakerNumber: Int? {
        guard var index = speakers.firstIndex(where: { !$0.isCompleted } ) else { return nil }
        
        return index + 1
    }
    
    private var isLastSpeaker: Bool {
        return speakers.dropLast().allSatisfy { $0.isCompleted }
    }
    
    private var speakerText: String {
        guard let speakerNumber = speakerNumber else { return "No more speakers" }
        return "Speaker \(speakerNumber) of \(speakers.count)"
    }
    
    var body: some View {
        HStack {
            if isLastSpeaker {
                Text("Last Speaker")
            } else {
                Text(speakerText)
                Spacer()
                Button(action: skipAction) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }
        .padding([.bottom, .horizontal])
    }
}

#Preview {
    @Previewable var speakers = DailyScrum.sampleData[0].attendees
        .map { $0.name }
        .map { ScrumTimer.Speaker(name: $0, isCompleted: false) }
    
    MeetingFooterView(speakers: speakers, skipAction: {})
}
