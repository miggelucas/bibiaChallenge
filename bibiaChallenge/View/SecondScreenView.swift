//
//  SecondScreenView.swift
//  bibiaChallenge
//
//  Created by Guilherme Souza on 05/04/23.
//

import SwiftUI

struct SecondScreenView: View {
    var body: some View {
        VStack {
            VStack (spacing: 58) {
                Image("smiling")
                VStack (spacing: 78) {
                    Image("header")
                }
                VStack (spacing: 36) {
                    Image("new-game")
                    Image("continue")
                }
            }
            .padding(EdgeInsets(top: 210, leading: 0, bottom: 210, trailing: 0))
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Image("background-secondScreen"))
    }
}

struct SecondScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreenView()
            .ignoresSafeArea()
    }
}
