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
    @Published var selectedItem: String?
//    @Published var editButton = false
    @Published var alertTitle = ""
    @Published var alertMessage = ""
    @Published var items = ["Item 1", "Item 2", "Item 3", "Item 4"]
    
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
    
//    func editItem(_ item: String) {
//        print("Edit \(item)")
//        self.editButton = true
//    }
}
