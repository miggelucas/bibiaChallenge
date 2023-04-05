//
//  bibiaChallengeApp.swift
//  bibiaChallenge
//
//  Created by Lucas Migge de Barros on 05/04/23.
//

import SwiftUI

@main
struct bibiaChallengeApp: App {
    let scoreManager = ScoreManager()
    let gameSettings = GameSettings()
    
    var body: some Scene {
        WindowGroup {
            TestHome()
                .environmentObject(scoreManager)
                .environmentObject(gameSettings)

        }
    }
}
