//
//  ContentView.swift
//  onboarding_screen
// 
//  Created by Haktan Can Taşkıran on 10.03.2024.
//

import SwiftUI

var totalPages = 3

struct ContentView: View {
    
    @AppStorage("currentPage") var currentPage = 1
    var body: some View {
        if currentPage > totalPages {
            Home()
        } else {
            Onboarding()
        }
    }
}

#Preview {
    ContentView()
}

