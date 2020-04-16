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
                    .frame(width: UIConstants.photoWidth, height: UIConstants.photoHeight)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(Color.white, lineWidth: UIConstants.circleBorderWidth))
                MainText(text: "Sebastian Malm")
                    .font(.custom("Pacifico-Regular", size: UIConstants.nameTextSize))
                MainText(text: "iOS Developer")
                    .font(.headline)
                Divider()
                InfoCapsule(symbolName: "phone.fill", text: "(555) 555-5555")
                InfoCapsule(symbolName: "envelope.fill", text: "email@email.com")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoCapsule: View {
    
    let symbolName: String
    let text: String
    
    var body: some View {
        ZStack {
            Capsule().fill(Color.white)
                .frame(width: UIConstants.capsuleWidth, height: UIConstants.capsuleHeight)
                .overlay(HStack {
                    Image(systemName: symbolName)
                        .foregroundColor(Color("BrandGreen"))
                    Text(text)
                })
        }
    }
}

struct MainText: View {
    
    let text: String
    
    var body: some View {
        Text(text).foregroundColor(Color.white)
    }
}

private struct UIConstants {
    static let photoWidth: CGFloat = 200
    static let photoHeight: CGFloat = 200
    static let circleBorderWidth: CGFloat = 5
    static let nameTextSize: CGFloat = 50
    static let capsuleWidth: CGFloat = 350
    static let capsuleHeight: CGFloat = 45
}
