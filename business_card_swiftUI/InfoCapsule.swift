//
//  InfoCapsule.swift
//  business_card_swiftUI
//
//  Created by Sebastian Malm on 4/18/20.
//  Copyright © 2020 SebastianMalm. All rights reserved.
//

import SwiftUI

struct InfoCapsule: View {
    
    let symbolName: String
    let text: String
    
    var body: some View {
        ZStack {
            Capsule().fill(Color("CapsuleFill"))
                .frame(width: InfoCapsuleUIK.capsuleWidth, height: InfoCapsuleUIK.capsuleHeight)
                .overlay(HStack {
                    Image(systemName: symbolName)
                        .foregroundColor(Color("BrandGreen"))
                    Text(text)
                })
        }
    }
}

struct InfoCapsule_Previews: PreviewProvider {
    static var previews: some View {
        InfoCapsule(symbolName: "phone.fill", text: "Placeholder")
            .previewLayout(.sizeThatFits)
    }
}

private struct InfoCapsuleUIK {
    static let capsuleWidth: CGFloat = 350
    static let capsuleHeight: CGFloat = 45
}
