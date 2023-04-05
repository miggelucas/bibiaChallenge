//
//  homeBtn.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

struct homeBtn: View {
    let dismiss: DismissAction
    
    var body: some View {
        Button(action: {dismiss()}, label: {
            Image("backhome icon").frame(width: 131, height: 131)})
    }
}

