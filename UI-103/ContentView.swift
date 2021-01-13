//
//  ContentView.swift
//  UI-103
//
//  Created by にゃんにゃん丸 on 2021/01/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Home()
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
