//
//  OpcoesMensagemView.swift
//  ChallengeImPada
//
//  Created by Bof on 31/03/23.
//

import Foundation
import SwiftUI

struct ChatOptionManager {
    var option: ChatOption
    var isAnswerable: Bool = true
}

enum ChatOption: String, CaseIterable {
    
    case hello = "oiiiis how are u?" //0
    case goodBye = "falouu"//1
    
    case hello2a = "tb to bemm, mt feliz"//2
    case hello2b = "nao to mt bem :("//3

    
    var answer: String {
        switch self {
        case .hello:
            return "I'm fine, and u?"
        case .goodBye:
            return "goooood bye"
            
        case .hello2a:
            return "q bom!! pq?"
            
        case .hello2b:
            return "aaah, pq? :("
        }
    }

    
//    func branchOption() -> ChatOption2 {
//        switch self {
//        case .hello:
//            return ChatOption2
//        }
//    }
    
}
