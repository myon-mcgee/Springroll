//
//  PopupView.swift
//  Springroll
//
//  Created by Myon McGee on 2/24/25.
//

import SwiftUI

struct PopupView: View {
    var body: some View {
        VStack {
            Text("This is a popup")
                .font(.title)
                .padding()
            Button("Close") {
                // Close logic handled in parent view
            }
            .padding()
        }
        .frame(width: 300, height: 200)
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 10)
    }
}

#Preview {
    PopupView()
}
