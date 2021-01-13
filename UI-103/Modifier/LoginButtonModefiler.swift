//
//  LoginButtonModefiler.swift
//  UI-103(iOS)
//
//  Created by にゃんにゃん丸 on 2021/01/13.
//

import SwiftUI

struct LoginButtonModefiler: ViewModifier {
    @EnvironmentObject var model : HomeViewModel
    func body(content: Content) -> some View {
        return content
            .frame(width: model.isMacOs ? 16 : 20 , height: model.isMacOs ? 16 : 20)
            .foregroundColor(.white)
            .background(
                LinearGradient(gradient: .init(colors: [.red,.green]), startPoint: .center, endPoint: .trailing)
            )
            .clipShape(Circle())
    }
}
