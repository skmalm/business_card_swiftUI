//
//  ContentView.swift
//  business_card_swiftUI
//
//  Created by Sebastian Malm on 4/13/20.
//  Copyright © 2020 SebastianMalm. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("BrandGreen").edgesIgnoringSafeArea(.all)
            VStack {
                Image("seb")
                    .resizable()
                    .frame(width: UIK.photoWidth, height: UIK.photoHeight)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.white, lineWidth: UIK.circleBorderWidth))
                MainText(text: "Sebastian Malm")
                    .font(.custom("Pacifico-Regular", size: UIK.nameTextSize))
                MainText(text: "iOS Developer")
                    .font(.headline)
                Divider()
                InfoCapsule(symbolName: "phone.fill", text: "(555) 555-5555")
                InfoCapsule(symbolName: "envelope.fill", text: "email@email.com")
            }
        }
        
    }
}

// MARK: - Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView().environment(\.colorScheme, .light)
            ContentView().environment(\.colorScheme, .dark)
        }
    }
}

// MARK: - Custom Subviews

struct MainText: View {
    
    let text: String
    
    var body: some View {
        Text(text).foregroundColor(Color.white)
    }
}

// MARK: - UI Constants

private struct UIK {
    static let photoWidth: CGFloat = 200
    static let photoHeight: CGFloat = 200
    static let circleBorderWidth: CGFloat = 5
    static let nameTextSize: CGFloat = 50

}
