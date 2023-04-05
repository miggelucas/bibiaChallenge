//
//  TestHome.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

struct TestHome: View {
    @EnvironmentObject var scoreManager: ScoreManager // guarda score de comidas
    @EnvironmentObject var gameSettings: GameSettings

    var body: some View {
        NavigationStack {
            NavigationLink(destination: PetView(gameSettings: _gameSettings, meloMood: .angry)) {
                            Image(systemName: "globe")
                                .imageScale(.large)
                                .foregroundColor(.accentColor)
                        }
        }
    }
}

struct TestHome_Previews: PreviewProvider {
    static var previews: some View {
        TestHome()
    }
}
