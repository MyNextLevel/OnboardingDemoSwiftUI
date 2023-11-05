//
//  OnboardingDemoSwiftUIApp.swift
//  OnboardingDemoSwiftUI
//
//  Created by Abbos Donaboev on 05/11/23.
//

import SwiftUI

@main
struct OnboardingDemoSwiftUIApp: App {
    @AppStorage("isOnboarded") var isOnboarded: Bool = false
    
    var body: some Scene {
        WindowGroup {
            if isOnboarded {
                HomeView()
            } else {
                OnboardingView()
            }
        }
    }
}
