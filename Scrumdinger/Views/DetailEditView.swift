//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 19/05/25.
//

import SwiftUI

struct DetailEditView: View {
    @State private var emptyScrum = DailyScrum.emptyScrum
    @State private var attendeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting info")) {
                TextField("Title", text: $emptyScrum.title)
                HStack {
                    Slider(value: $emptyScrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(emptyScrum.lengthInMinutes) minutes")
                    Spacer()
                    Text("\(emptyScrum.lengthInMinutes) minutes")
                        .accessibilityHidden(true)
                }
            }
            Section(header: Text("Attendees")) {
                ForEach(emptyScrum.attendences) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    emptyScrum.attendences.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Attendee", text: $attendeName)
                    Button(action: {
                        withAnimation {
                            let newAttendee = DailyScrum.Attendee(name: attendeName)
                            emptyScrum.attendences.append(newAttendee)
                            attendeName = ""
                        }
                    }){
                        Image(systemName: "plus.circle.fill")
                            .accessibilityLabel("Add attendee")
                    }
                }
            }
        }
    }
}

#Preview {
    DetailEditView()
}
