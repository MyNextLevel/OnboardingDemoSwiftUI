//
//  ContentView.swift
//  OnboardingDemoSwiftUI
//
//  Created by Abbos Donaboev on 05/11/23.
//

import SwiftUI

struct OnboardingView: View {
    @State private var index = 0
    private let data: [OnboardingData] = OnboardingData.onboardingData
    private let mainColor = Color(red: 0.08, green: 0.1, blue: 0.15)
    private let buttonColor = Color(red: 0.13, green: 0.16, blue: 0.25)
    private let buttonTextColor = Color(red: 1, green: 1, blue: 1)
    private let activeIndicatorColor = Color(red: 0.28, green: 0.44, blue: 1)
    private let inactiveIndicatorColor = Color(red: 0.13, green: 0.16, blue: 0.25)
    private let dotAppearance = UIPageControl.appearance()
    @AppStorage("isOnboarded") var isOnboarded: Bool?
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            
            VStack{
                TabView(selection: $index) {
                    ForEach(data) { item in
                        OnboardingItem(data: item).tag(item.tag)
                    }
                }.animation(.easeInOut, value: index).tabViewStyle(PageTabViewStyle()).indexViewStyle(.page(backgroundDisplayMode: .interactive)).padding(.bottom, 20).onAppear {
                    dotAppearance.currentPageIndicatorTintColor = UIColor(activeIndicatorColor)
                    dotAppearance.pageIndicatorTintColor = UIColor(inactiveIndicatorColor)
                   
                }
                
                VStack {
                    Button(action: {
                        if index == data.count - 1 {
                            isOnboarded = true
                        }else {
                            index += 1
                            print("index: \(index)")
                        }
                        
                    }) {
                        Text(index == (data.count - 1) ? "Start": "Next")
                          .font(
                            Font.system( size: 17,weight: .semibold,design: .rounded)
                        
                          )
                          .foregroundColor(buttonTextColor).frame(maxWidth: .infinity,maxHeight: 50,alignment: .center).background(buttonColor).cornerRadius(100)
                    }.padding(.horizontal, 32)
                    
                    Button(action: {
                    }) {
                        HStack {
                            Image(systemName: "apple.logo").frame(width: 22,height: 22).foregroundColor(.white)
                            
                            Text("Login with Apple")
                              .font(
                                Font.system( size: 17,weight: .semibold, design: .rounded)
                              )
                              .foregroundColor(buttonTextColor)
                        }.frame(maxWidth: .infinity,maxHeight: 45,alignment: .center)
                    }.padding(EdgeInsets(top: 16, leading: 32, bottom: 50, trailing: 32))
                }
            }
            
        
        }
    }
}

#Preview {
    OnboardingView()
}
