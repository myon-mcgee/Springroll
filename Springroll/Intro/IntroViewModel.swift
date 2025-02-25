//
//  IntroViewModel.swift
//  Springroll
//
//  Created by Myon McGee on 2/23/25.
//

import Foundation
import SwiftUI

class IntroViewModel: ObservableObject {
    @Published var showHome = false
    
    init() {
        startTransition()
    }
    
    func startTransition() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { // 2-second delay
            withAnimation(.easeIn(duration: 1.5)) { // Smooth fade
                self.showHome = true
            }
        }
    }
}
