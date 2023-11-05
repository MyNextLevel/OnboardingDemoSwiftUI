//
//  OnboardingView.swift
//  OnboardingDemoSwiftUI
//
//  Created by Abbos Donaboev on 05/11/23.
//

import SwiftUI

struct OnboardingItem: View {
    var data: OnboardingData
    private let mainColor = Color(red: 0.08, green: 0.1, blue: 0.15)
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Image(data.imageUrl).resizable().scaledToFit().frame(width: 290,height: 230).padding(.top, 60)
                Text(data.title)
                  .font(
                    Font.system( size: 34,weight: .bold,design: .rounded)
                  )
                  .foregroundColor(.white).padding(.top, 50)
                Text(data.description)
                    .font(Font.system( size: 17,design: .rounded))
                  .multilineTextAlignment(.center)
                  .foregroundColor(.white.opacity(0.6)).padding(.top, 8)
                  Spacer()
            }.padding(.horizontal, 32)
        }
    }
}

#Preview {
    OnboardingItem(data: OnboardingData.sampleData)
}
