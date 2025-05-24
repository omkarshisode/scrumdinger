//
//  TralingIconLableStyle.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 16/05/25.
//

import Foundation
import SwiftUI

struct TralingIconLableStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TralingIconLableStyle {
    static var tralingIocn: Self { Self() }
}
