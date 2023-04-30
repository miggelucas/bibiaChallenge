//
//  ChatView.swift
//  bibiaChallenge
//
//  Created by Bof on 05/04/23.
//

import Foundation
import SwiftUI

struct ChatView: View {
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        ZStack(alignment: .centerFirstTextBaseline) {
            ScrollView {
                Text("mensagem a")
                    .font(.custom("Pixellari", size: 32))
                    .multilineTextAlignment(.leading)
                Text("mensagem b")
                    .font(.custom("Pixellari", size: 32))
                    .multilineTextAlignment(.leading)
            }
            VStack {
                HStack {
                    homeBtn(dismiss: dismiss, imageName: "arrow-icon")
                    Image("chat-header")
                }.padding(.trailing, 200)
                Spacer()
                Button(action: {}, label: {
                    ZStack {
                        Rectangle()
                            .frame(height: 252)
                        Rectangle()
                            .frame(width: 778, height: 76)
                            .foregroundColor(.white)
                            .cornerRadius(88)
                        Text("O QUE VOCÊ TEM A DIZER?")
                            .font(.custom("Pixellari", size: 32))
                            .multilineTextAlignment(.leading)
                    }
                }).ignoresSafeArea()
            }
        }.background(Image("Chat wallpaper"))
            .navigationBarBackButtonHidden(true)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
