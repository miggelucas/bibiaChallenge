//
//  FirstScreenView.swift
//  bibiaChallenge
//
//  Created by Guilherme Souza on 05/04/23.
//

import SwiftUI

struct FirstScreenView: View {
    var body: some View {
        NavigationStack {
            VStack (spacing: 58) {
                Image("smiling")
                VStack (spacing: 78) {
                    Image("header")
                    NavigationLink {
                        SecondScreenView()
                    } label: {
                        Image("begin-button")
                    }
                }
            }
        }
    }
}

struct FirstScreenView_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreenView()
    }
}
