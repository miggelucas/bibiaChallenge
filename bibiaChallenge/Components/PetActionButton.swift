//
//  PetActionButton.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

struct PetActionFormula {
    var action: () -> Void
    var color: Int
    var text: String
}

struct PetActionButton: View {
    var isActive: Bool
    
    var formula: PetActionFormula
    
    var body: some View {
        Button(action: formula.action, label: {
            ZStack {
                Circle()
                    .frame(width: formula.color == 1 ? 210 : 160, height: formula.color == 1 ? 210 : 160)
                    .foregroundColor(isActive ? formula.color==0 ? Color("orange") : formula.color == 1 ? Color("red") : Color("pink") : .gray)
                Text(formula.text)
                    .foregroundColor(.white)
                    .font(
                        .custom("daydream", size: 36))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
            }
        })
    }
}