//
//  Register.swift
//  UI-103(iOS)
//
//  Created by にゃんにゃん丸 on 2021/01/13.
//

import SwiftUI

struct Register: View {
    @EnvironmentObject var model : HomeViewModel
    var body: some View {
        VStack(alignment:.leading,spacing:10){
            
          
            
            Label(
                title: {  Text("Please Registar")
                    .font(.title)
                    .fontWeight(.bold) },
                icon: { Button(action: {
                    withAnimation{
                        model.ClearData()
                        model.gotoRegister.toggle()
                    }
                    
                }, label: {
                    Image("r")
                        .renderingMode(.template)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .foregroundColor(.black)
                        .rotationEffect(.init(degrees: 180))
                })
                .buttonStyle(PlainButtonStyle())
                })
            
           
            
            
            
           
            
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
            
            Label(
                title: { SecureField("Re_Enter", text: $model.reEnter)
                    .frame(height: 30)
                    .textFieldStyle(PlainTextFieldStyle())
                },
                icon: { Image(systemName: "lock")
                    .foregroundColor(.gray)
                })
            
            
            
            
           
            
        }
        
        
        .modifier(LoginModefier())
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}

