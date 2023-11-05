//
//  OnboardingData.swift
//  OnboardingDemoSwiftUI
//
//  Created by Abbos Donaboev on 05/11/23.
//

import Foundation

struct OnboardingData: Identifiable, Equatable {
    let id = UUID()
    var title: String
    var description: String
    var imageUrl: String
    var tag: Int
    
    static var sampleData = OnboardingData(title: "Sample title", description: "Sample description for preview section fdsjkhfs fsdkjfhksj dsgjhksahf gkdsjhfgkjfdsa fsdajfhk", imageUrl: "OnboardingImage", tag: 0)
    
    static var onboardingData = [ 
        OnboardingData(title: "Exclusive sounds", description: "We have an author's library of sounds that you will not find anywhere else", imageUrl: "OnboardingImage", tag: 0),
        OnboardingData(title: "Relax sleep sounds", description: "Our sounds will help to relax and improve your sleep health", imageUrl: "OnboardingImage", tag: 1),
        OnboardingData(title: "Story for kids", description: "Famous fairy tales with soothing sounds will help your children fall asleep faster", imageUrl: "OnboardingImage", tag: 2)
    ]
}
