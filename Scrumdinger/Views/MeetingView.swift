//
//  ContentView.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 16/05/25.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        NavigationStack {
            VStack {
                ProgressView(value: 2, total: 10)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Seconds Elapsed")
                            .font(.caption)
                        Label("300", systemImage: "hourglass.tophalf.fill")
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("Seconds Remanining")
                            .font(.caption)
                        Label("600", systemImage: "hourglass.bottomhalf.fill")
                    }
                }
                .accessibilityElement(children: .ignore)
                .accessibilityLabel("Time remainging")
                .accessibilityValue("10 mintues")
                Circle()
                    .strokeBorder(lineWidth: 24)
                HStack {
                    Text("Speaker 1 to 3")
                    Spacer()
                    Button(action: { }) {
                        Image(systemName: "forward.fill")
                    }
                    .accessibilityLabel("Next Speaker")
                }
            }.padding()
        }
        .navigationTitle("Design")
    }
}

#Preview {
    MeetingView()
}
