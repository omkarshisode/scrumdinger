//
//  PracticeView.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 14/02/26.
//

import SwiftUI

struct PracticeView: View {
    @State var isOn = false
    
    var body: some View {
        ChildView(isOn: $isOn)
        Spacer()
        if isOn {
            Text("View is on")
        } else {
            Text("View is off")
        }
    }
}

struct ChildView: View {
    @Binding var isOn: Bool
    
    var body: some View {
        Toggle(isOn: $isOn) {
            Text("On")
        }
    }
}

#Preview("Practice View") {
    PracticeView()
}

#Preview("Chid View") {
    @Previewable @State var isOn: Bool = false
    ChildView(isOn: $isOn)
}
