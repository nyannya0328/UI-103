//
//  Login.swift
//  UI-103(iOS)
//
//  Created by にゃんにゃん丸 on 2021/01/13.
//

import SwiftUI

struct Login: View {
    @EnvironmentObject var model : HomeViewModel
    var body: some View {
        VStack(spacing:10){
            
            
            
            Text("Please Login")
                .font(.title)
                .fontWeight(.bold)
            
            Label(
                title: { TextField("Enter Email", text: $model.email)
                    .frame(height: 30)
                    .textFieldStyle(PlainTextFieldStyle())
                },
                icon: { Image(systemName: "envelope.circle.fill")
                    .foregroundColor(.gray)
                })
            
            Divider()
            
            Label(
                title: { SecureField("Enter Password", text: $model.password)
                    .frame(height: 30)
                    .textFieldStyle(PlainTextFieldStyle())
                },
                icon: { Image(systemName: "lock")
                    .foregroundColor(.gray)
                })
                .overlay(
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "eyes.inverse")
                        
                    }),alignment: .bottomTrailing
                    
                
                )
            
            
            Divider()
            
            HStack{
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("For got details?")
                        .font(.caption)
                        .foregroundColor(.blue)
                })
                Spacer()
                
                Button(action: {
                    withAnimation{
                        model.ClearData()
                        model.gotoRegister.toggle()
                    }
                    
                }, label: {
                    Text("Crete Account?")
                        .font(.caption)
                        .foregroundColor(.blue)
                })
                .buttonStyle(PlainButtonStyle())
                
                
                
            }
            
            
           
            
        }
        
        
        .modifier(LoginModefier())
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
