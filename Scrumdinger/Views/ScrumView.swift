//
//  ScrumView.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 17/05/25.
//

import SwiftUI

struct ScrumView: View {
    let scurms: [DailyScrum]
    
    var body: some View {
        NavigationStack {
            List(scurms) { scurm in
                NavigationLink(destination: DetailView(scrum: scurm)) {
                    CardView(scrum: scurm)
                }
                .listRowBackground(scurm.theme.mainColor)
            }
            .navigationTitle("Daily Scurms")
            .toolbar {
                Button(action: {}) {
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
    ScrumView(scurms: DailyScrum.sampleData)
}
