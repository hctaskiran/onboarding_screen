//
//  onboarding.swift
//  onboarding_screen
//
//  Created by Haktan Can Taşkıran on 11.03.2024.
//

import Foundation
import SwiftUI




struct Onboarding: View {
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View{
        ZStack {
            if currentPage == 1 {
                ScreenView(
                    image: "pixel_waving_guy",
                    title: "Let's see what we can do.",
                    details: "We'll see what is the purpose of the app. Let's roll!"
                )
            }
            
            if currentPage == 2 {
                ScreenView(
                    image: "sushi",
                    title: "Fresh Food!",
                    details: "You will ALWAYS get fresh food when you order."
                )
            }
            
            if currentPage == 3 {
                ScreenView(
                    image: "drink",
                    title: "Take a Sip!",
                    details: "We know that an order can not be completed without beverage. Choose one and go!"
                )
            }
        }
    }
}
