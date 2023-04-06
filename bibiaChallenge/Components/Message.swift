//
//  Mensagem.swift
//  ChallengeImPada
//
//  Created by Bof on 31/03/23.
//

import Foundation
import SwiftUI

struct Message: Identifiable {
        var id = UUID()
        
        let text: String
}

struct MessageView: View {
    var message: Message
    var isUser: Bool
    
    var body: some View {
        HStack(alignment: .top) {
            if isUser {
                Spacer()
            } else {
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 24))
            }
            
            VStack(alignment: isUser ? .trailing : .leading, spacing: 4) {
                Text(message.text)
                    .padding(8)
                    .foregroundColor(.white)
                    .background(isUser ? Color.blue : Color(.systemGray6))
                    .cornerRadius(12)
            }
            
            if !isUser {
                Spacer()
            } else {
                Image(systemName: "person.circle.fill")
                    .font(.system(size: 24))
            }
        }
        .padding(.horizontal)
    }
}
