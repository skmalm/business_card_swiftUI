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
                ZStack {
                    Image("seb")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                    Circle()
                        .strokeBorder(Color.white, lineWidth: 4.0)
                        .frame(width: 200, height: 200)
                }
                MainText(text: "Sebastian Malm")
                    .padding(.bottom)
                    .font(.custom("Pacifico", size: 50.0))
                MainText(text: "iOS Developer")
                    .font(.headline)
                    .padding(.bottom)
                InfoCapsule(symbolName: "phone.fill", text: "(555) 555-5555")
                    .padding(.bottom)
                InfoCapsule(symbolName: "envelope.fill", text: "email@email.com")
                    .padding(.top)
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
                .frame(width: 350, height: 45)
            HStack {
                Image(systemName: symbolName)
                    .foregroundColor(Color("BrandGreen"))
                Text(text)
            }
        }
        
    }
}

struct MainText: View {
    
    let text: String
    
    var body: some View {
        Text(text).foregroundColor(Color.white)
    }
}
