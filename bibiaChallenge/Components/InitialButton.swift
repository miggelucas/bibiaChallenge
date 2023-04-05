//
//  InitialButton.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

struct InitialButton: View {
    var destination: () -> TestHomeView
    var body: some View {
        NavigationLink(destination: destination, label: {
            ZStack {
                Rectangle()
                    .frame(width: 376.04, height: 84)
                Text("Novo jogo")
                    .foregroundColor(.white)
                    .font(
                        .custom("daydream", size: 24))
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
            }
        })
    }
}
