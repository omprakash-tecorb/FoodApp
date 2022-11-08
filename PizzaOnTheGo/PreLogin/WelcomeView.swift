//
//  WelcomeView.swift
//  PizzaOnTheGo
//
//  Created by Apple on 08/11/22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
       VStack
        {ScrollView
            {
                Image("piza3")
                    .resizable()
                    .frame(height: UIScreen.main.bounds.height/1.8)
                HStack
                 {
                     Text("Welcome to PizzaHut")
                         .fontWeight(.bold)
                         .font(.system(size: 25))
                         .offset(x:-25)
                     Image("pis1")
                         .resizable()
                         .frame(width: 25,height: 20)
                         .offset(x:-30)
                         
                 }
                 .padding(.top,40)
//               Button(action: {})
//                {
                    NavigationLink(destination:  SignInView())
                    {
                        RoundedRectangle(cornerRadius: 4.0)
                            .fill(.green)
                            .overlay(RoundedRectangle(cornerRadius: 4.0)
                            .stroke(Color.white, lineWidth: 1.0))
                            .frame(width: 330,height: 50)
                            .overlay(Text("Sign in or Register").foregroundColor(.white).fontWeight(.medium))
                    }
            
               // }
                
                Button(action: {})
                {
                    RoundedRectangle(cornerRadius: 4.0)
                        .fill(.clear)
                        .overlay(RoundedRectangle(cornerRadius: 4.0).stroke(Color.green,lineWidth: 1.0))
                        .frame(width: 330,height: 50)
                        .overlay(Text("Continue as guest").foregroundColor(Color.green).fontWeight(.medium))
                }
                .padding(.top,20)
            }
            .scrollDisabled(true)
            .edgesIgnoringSafeArea(.top)
          
           
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
