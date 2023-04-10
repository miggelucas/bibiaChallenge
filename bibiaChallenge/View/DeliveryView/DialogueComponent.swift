//
//  DialogueComponent.swift
//  bibia
//
//  Created by sml on 05/04/23.
//

import SwiftUI

extension DeliveryView {
    
    var dialogue: some View {
        VStack {
            Spacer()
            ZStack (alignment: .top) {
                Rectangle()
                    .background(Color.customGrey)
                    .opacity(0.2)
                    .frame(height: size.height)
                VStack {
                    ZStack {
                        Group {
                            Text(fulano)
                                .foregroundColor(Color.customRed)
                                .font(.custom("Pixellari", size: 32))
                            +
                            Text(text)
                                .foregroundColor(.black)
                                .font(.custom("Pixellari", size: 32))
                            +
                            Text(finalText)
                                .foregroundColor(.white)
                                .font(.custom("Pixellari", size: 32))

                        }
                        .lineSpacing(10.0)
                        .padding(28)
                    }.background(Color.white)
                    buttons
                }
                .padding(.vertical, 44)
                .padding(.horizontal, 54)
                .background(
                    GeometryReader { proxy in
                        Color.clear
                            .onAppear{
                                size = proxy.size
                            }
                    }
                )
            }
            .onAppear {
                typeWriter()
            }
            
        }
    }
    
    func typeWriter(at position: Int = 0) {
        if finalText.count > 0 {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                text.append(finalText.removeFirst())
                typeWriter(at: position + 1)
            }
        }
        
    }
}

