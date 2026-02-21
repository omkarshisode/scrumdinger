//
//  ScrumView.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 17/05/25.
//

import SwiftUI

struct ScrumView: View {
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List($scrums) { $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar {
                Button(action: {
                    // TODO: Add the action
                }) {
                    Image(systemName: "plus")
                        .bold()
                        .padding()
                        .accessibilityLabel("New Scrum")
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var scrums = DailyScrum.sampleData
    ScrumView(scrums: $scrums)
}
