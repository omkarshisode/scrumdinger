//
//  ThemPicker.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 25/05/25.
//

import SwiftUI
import ThemeKit

struct ThemePicker: View {
    @Binding var selection: Theme
    var body: some View {
        Picker("Theme", selection: $selection) {
            ForEach(Theme.allCases) { theme in
                ThemeView(theme: theme)
                    .tag(theme)
            }
        }
        .pickerStyle(.navigationLink)
    }
}

#Preview {
    @Previewable @State var selection = Theme.periwinkle
    ThemePicker(selection: $selection)
}
