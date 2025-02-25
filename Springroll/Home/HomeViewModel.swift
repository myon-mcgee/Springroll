//
//  HomeViewModel.swift
//  Springroll
//
//  Created by Myon McGee on 2/24/25.
//

import Foundation
import SwiftUI

class HomeViewModel: ObservableObject{
    @Published var showAlert = false
    @Published var navigate = false
    @Published var alertTitle = ""
    @Published var alertMessage = ""
    
    var primaryAction: (() -> Void)? = nil  // Action for the first button
    var secondaryAction: (() -> Void)? = nil  // Action for the second button

    func triggerAlert(title: String, message: String, primaryTitle: String, secondaryTitle: String, primaryAction: @escaping () -> Void, secondaryAction: @escaping () -> Void) {
        self.alertTitle = title
        self.alertMessage = message
        self.primaryAction = primaryAction
        self.secondaryAction = secondaryAction
        self.showAlert = true
    }
    
    func triggerNavigation() {
        DispatchQueue.main.async { [weak self] in
            self?.navigate = true
        }
    }
}
