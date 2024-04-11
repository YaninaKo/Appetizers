//
//  AppetizersApp.swift
//  Appetizers
//
//  Created by Yanina Kovrakh on 29.03.2024.
//

import SwiftUI

@main
struct AppetizersApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
