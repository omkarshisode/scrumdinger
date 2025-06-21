//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 19/05/25.
//

import SwiftUI

struct DetailEditView: View {
    @Binding var scrum: DailyScrum
    @State private var attendeName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting info")) {
                TextField("Title", text: $scrum.title)
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(scrum.lengthInMinutes) minutes")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                        .accessibilityHidden(true)
                }
                ThemePicker(selection: $scrum.theme)
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendences) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    scrum.attendences.remove(atOffsets: indices)
                }
                HStack {
                    TextField("New Attendee", text: $attendeName)
                    Button(action: {
                        withAnimation {
                            let newAttendee = DailyScrum.Attendee(name: attendeName)
                            scrum.attendences.append(newAttendee)
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
    @Previewable @State var emptyScrum = DailyScrum.emptyScrum
    DetailEditView(scrum: $emptyScrum)
}
