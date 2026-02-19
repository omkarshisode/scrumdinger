//
//  CardView.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 16/05/25.
//

import SwiftUI

struct CardView: View {
    let scrum: DailyScrum
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(scrum.title)
                .font(.headline)
                .accessibilityAddTraits(.isHeader)
            
            HStack {
                Label("\(scrum.attendences.count)", systemImage: "person.3")
                
                Spacer()
                
                Label("\(scrum.lengthInMinutes) min", systemImage: "clock")
                    .labelStyle(.tralingIocn)
                
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(scrum.theme.accentColor)
        .ALI
    }
}

#Preview(traits: .fixedLayout(width: 600, height: 60)){
    let scurm = DailyScrum.sampleData[0]
    CardView(scrum: scurm)
        .background(scurm.theme.mainColor)
}
