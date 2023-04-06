//
//  ButtonsComponent.swift
//  bibia
//
//  Created by sml on 06/04/23.
//

import SwiftUI

extension DeliveryView {
    var buttons: some View {
        HStack {
            HStack {
                Image("left-arrow")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .padding(.trailing, 6)
                Text("VOLTAR")
                    .font(.custom("daydream", size: 32))
                    .foregroundColor(.white)
                    .fontWeight(.thin)
            }
            Spacer()
            HStack {
                Text("PROXIMO")
                    .font(.custom("daydream", size: 32))
                    .foregroundColor(.white)
                    .fontWeight(.thin)
                Image("left-arrow")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
                    .padding(.leading, 6)
                    .rotationEffect(Angle(degrees: 180))
            }
        }.padding(.bottom, 10)
    }
    
}
