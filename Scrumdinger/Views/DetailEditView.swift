//
//  DetailEditView.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 19/05/25.
//

import SwiftUI

struct DetailEditView: View {
    @Binding var scrum: DailyScrum
    @State private var attendeesName = ""
    
    var body: some View {
        Form {
            Section(header: Text("Meeting info")) {
                // Edit title
                TextField("Title", text: $scrum.title)
                
                // Edit time
                HStack {
                    Slider(value: $scrum.lengthInMinutesAsDouble, in: 5...30, step: 1) {
                        Text("Length")
                    }
                    .accessibilityValue("\(scrum.lengthInMinutes) minutes")
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                        .accessibilityHidden(true)
                }
                
                // Edit theme
                ThemePicker(selection: $scrum.theme)
            }
            
            // Edit attendees
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees) { attendee in
                    Text(attendee.name)
                }
                .onDelete { indices in
                    scrum.attendees.remove(atOffsets: indices)
                }
                
                HStack {
                    TextField("New Attendee", text: $attendeesName)
                    
                    Button(action: {
                        withAnimation {
                            let newAttendee = DailyScrum.Attendee(name: attendeesName)
                            scrum.attendees.append(newAttendee)
                            attendeesName = ""
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
