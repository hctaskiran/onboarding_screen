//
//  screen_view.swift
//  onboarding_screen
//
//  Created by Haktan Can Taşkıran on 11.03.2024.
//

import Foundation
import SwiftUI



struct ScreenView: View {
    
    let image: String
    let title: String
    let details: String
    
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        ZStack {
            VStack {
                HStack{
                    if currentPage == 1 {
                        Text("Hello there!")
                            .font(.title)
                            .fontWeight(.semibold)
                            .kerning(1.4)
                    } else {
                        Button(action: {
                            currentPage -= 1
                        }, label: {
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .padding(.vertical, 10)
                                .padding(.horizontal)
                                .background(Color(.black.opacity(0.4)))
                                .cornerRadius(10)
                            
                        })
                        
                    }
                    
                    Spacer()
                    
                    Button (action: {
                        currentPage = 4
                    }, label: {
                        Text("Skip")
                            .fontWeight(.semibold)
                            .kerning(1.2)
                            .foregroundStyle(Color(.purple))
                        
                    })
                }.padding()
                    .foregroundColor(.black)
                
                Spacer(minLength: 0)
                
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 16)
                    .frame(height: 400)
                
                Spacer(minLength: 80)
                
                Text(title)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .kerning(1.2)
                    .padding(.top)
                    .padding(.bottom, 5)
                    .foregroundColor(Color("main_color"))
                
                Text(details)
                    .font(.body)
                    .fontWeight(.regular)
                    .kerning(1.2)
                    .padding([.leading, .trailing])
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 0)
                
                if currentPage == 1 {
                    HStack {
                        Color("main_color")
                            .frame(height: 8 / UIScreen.main.scale)
                        Color(.gray)
                            .frame(height: 8 / UIScreen.main.scale)
                        Color(.gray)
                            .frame(height: 8 / UIScreen.main.scale)
                    }
                }
                
                else if currentPage == 2 {
                    HStack {
                        Color(.gray)
                            .frame(height: 8 / UIScreen.main.scale)
                        Color("main_color")
                            .frame(height: 8 / UIScreen.main.scale)
                        Color(.gray)
                            .frame(height: 8 / UIScreen.main.scale)
                    }
                }
                
                else if currentPage == 3 {
                    HStack {
                        Color(.gray)
                            .frame(height: 8 / UIScreen.main.scale)
                        Color(.gray)
                            .frame(height: 8 / UIScreen.main.scale)
                        Color("main_color")
                            .frame(height: 8 / UIScreen.main.scale)
                    }
                }
                
                Button(action: {
                    if currentPage <= totalPages {
                        currentPage += 1
                    } else {
                        currentPage = 1
                    }
                }, label: {
                    if currentPage == 3 {
                        Text ("Get Started")
                            .fontWeight(.semibold)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("main_color"))
                            .cornerRadius(40)
                            .padding(.horizontal, 16)
                    } else {
                        Text ("Next")
                            .fontWeight(.semibold)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("main_color"))
                            .cornerRadius(40)
                            .padding(.horizontal, 16)
                    }
                })
                
            }
        }
    }
}

