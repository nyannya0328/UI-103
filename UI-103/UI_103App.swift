//
//  UI_103App.swift
//  UI-103
//
//  Created by にゃんにゃん丸 on 2021/01/13.
//

import SwiftUI

@main
struct UI_103App: App {
    var body: some Scene {
        
        #if os(iOS)
        WindowGroup {
            ContentView()
        }
        #else
        WindowGroup {
            ContentView()
        }
        .windowStyle(HiddenTitleBarWindowStyle())
        #endif
        
        
        
    }
}
#if !os(iOS)

extension NSTextField{
    
    open override var focusRingType: NSFocusRingType{
        
        get{.none}
        set{}
    }
}

#endif
