//
//  InitialScreenView.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

struct InitialView: View {
    @EnvironmentObject var scoreManager: ScoreManager // guarda score de comidas
    @EnvironmentObject var gameSettings: GameSettings
    
    var body: some View {
                NavigationStack {
                    VStack (spacing: 12) {
                        Image("melo-smiling")
                            .resizable()
                            .frame(width: 346, height: 410)
                        VStack (spacing: 78) {
                            Image("header")
                            NavigationLink {
                                TestHomeView()
                            } label: {
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
                            }
                        }
                    }.background(Image("Start Wallpaper"))
                }.navigationBarBackButtonHidden(true)
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
    }
}
