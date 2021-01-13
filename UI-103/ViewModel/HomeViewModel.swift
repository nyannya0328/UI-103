//
//  HomeViewModel.swift
//  UI-103(iOS)
//
//  Created by にゃんにゃん丸 on 2021/01/13.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var reEnter = ""
    
    @Published var gotoRegister = false
    
    var screen : CGRect{
        #if os(iOS)
        return UIScreen.main.bounds
        
        #else
        return NSScreen.main!.visibleFrame
        
        #endif
    }
        
        @Published var isMacOs = false
        
        init(){
        
            #if !os(iOS)
            self.isMacOs = true
            #endif
        
        }
    
    
    
    func ClearData(){
        
        email = ""
        password = ""
        reEnter = ""
    }
}

