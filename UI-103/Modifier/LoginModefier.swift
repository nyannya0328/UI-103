//
//  LoginModefier.swift
//  UI-103(iOS)
//
//  Created by にゃんにゃん丸 on 2021/01/13.
//

import SwiftUI

struct LoginModefier: ViewModifier {
    func body(content: Content) -> some View {
        return content
        
            .padding()
            .padding(.bottom)
            .background(Color.white)
            .cornerRadius(25)
            .padding(.bottom,10)
            .padding(.vertical)
            .padding(.horizontal,25)
    }
    
}

