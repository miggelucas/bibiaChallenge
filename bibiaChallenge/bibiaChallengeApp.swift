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
    
    var body: some Scene {
        WindowGroup {
            PetView(meloMood: .happy).environmentObject(scoreManager)
        }
    }
}
