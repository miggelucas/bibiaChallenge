//
//  PetView.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

// view
struct PetView: View {
    @Environment(\.dismiss) private var dismiss

    var isActive = false
    var meloMood: meloMood // dps vai ser binding
    
    var formulas: [PetActionFormula] = [
        PetActionFormula(action: {}, color: 0, text: "Food \n 23"),
        PetActionFormula(action: {}, color: 1, text: "Play!"),
        PetActionFormula(action: {}, color: 2, text: "Talk!")
    ]
    
    var body: some View {
        ZStack {
            VStack {
                HStack(spacing: 90) {
                    homeBtn(dismiss: dismiss)
                    Image("Pet header")
                    Spacer()
                }
                .frame(width: 704.62)
                Spacer()
                HStack(spacing: 102) {
                    PetActionButton(isActive: isActive, formula: formulas[0])
                    PetActionButton(isActive: isActive, formula: formulas[1])
                    PetActionButton(isActive: isActive, formula: formulas[2])
                }
                
            }.background(
                Image("Pet wallpaper")
                    .scaledToFit()
            )
            meloMood
        }.navigationBarBackButtonHidden(true)
    }

}

// enum para alterar mood do sprite
enum meloMood: View {
    case happy, smiling, sad, angry, crazy1, crazy2
    
    var body: some View {
        switch self {
        case .happy:
            return Image("melo-happy")
            
        case .smiling:
            return Image("melo-smiling")
            
        case .sad:
            return Image("melo-sad")
            
        case .angry:
            return Image("melo-angry")
        
        case .crazy1:
            return Image("melo-crazy1")
        
        case .crazy2:
            return Image("melo-crazy2")
        }
    }
}

struct PetView_Previews: PreviewProvider {
    
    static var previews: some View {
        PetView(meloMood: .happy)
    }
}
