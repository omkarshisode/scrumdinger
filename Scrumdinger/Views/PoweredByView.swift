//
//  PoweredByView.swift
//  Scrumdinger
//
//  Created by Omkar Shisode on 19/05/25.
//

import SwiftUI

struct PoweredByView: View {
    var body: some View {
        VStack(spacing: 2) {
            HStack {
                Image("Dista_logo_orange")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("Powered by Dista")
                    .foregroundColor(.primary)
                    .font(.body)
            }
            
            Text("Version 1.0.0")
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.leading, 24)
        }
        .frame(height: 200)
        .background(Color.clear)
    }
}

#Preview {
    PoweredByView()
}
