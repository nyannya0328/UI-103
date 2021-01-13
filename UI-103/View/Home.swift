//
//  Home.swift
//  UI-103(iOS)
//
//  Created by にゃんにゃん丸 on 2021/01/13.
//

import SwiftUI

struct Home: View {
    @StateObject var model = HomeViewModel()
    var body: some View {
        HStack{
            VStack{
                
                HStack{
                    
                    Text("Fitness You\nWanna Have")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.leading,25)
                    
                    Spacer()
                    
                }
                .padding()
                
                .overlay(
                    HStack{
                        
                        Image("c")
                            .renderingMode(.template)
                            .shadow(color: Color.black.opacity(0.09), radius: 5, x: 0, y: 5)
                            .offset(x: -65, y: 40)
                        
                        
                        Spacer()
                        
                        VStack{
                            
                            Image("c")
                                .renderingMode(.template)
                                .shadow(color: Color.black.opacity(0.09), radius: 5, x: 0, y: 5)
                                .offset(x: +60)
                        }
                       
                        
                        
                    },alignment: .bottomLeading
                   
                )
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
                    .padding(.horizontal)
                    .cornerRadius(10)
                
                
                
                
                if !model.isMacOs{ SlideLogin()
                    
                }
                
            }
            if model.isMacOs{ SlideLogin()}
        }
        .frame(maxHeight: .infinity)
        
        .background((model.isMacOs ? nil : Color("bg")).ignoresSafeArea(.all, edges: .all))
        .frame(width: model.isMacOs ? model.screen.width / 2 : nil, height: model.isMacOs ? model.screen.width / 2 : nil)
        .environmentObject(model)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct SlideLogin : View {
    @EnvironmentObject var model : HomeViewModel
    var body: some View{
        
        ZStack{
            
            
            if model.gotoRegister{
                Register().transition(model.isMacOs ? .move(edge: .trailing): .scale)
                
            }
           
            else{
                
                Login().transition(model.isMacOs ? .move(edge: .top) : .scale)
                
                
            }
            
            
            
            
            
        }
        
        .overlay(
        
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
               Image("r")
                .renderingMode(.template)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .modifier(LoginButtonModefiler())
                
                
                
                
            })
            .buttonStyle(PlainButtonStyle())
            .offset(x: -65)
            ,alignment: .bottomTrailing
        
        )
        
        
    }
}

