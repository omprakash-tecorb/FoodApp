//
//  SignInView.swift
//  PizzaOnTheGo
//
//  Created by Apple on 08/11/22.
//

import SwiftUI

struct SignInView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
       
        VStack()
        {
            ScrollView()
            {
                Divider()
                Text("Sign in to your account ")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .offset(x:-20)
            }
        }
        
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: NavBackButton(dismiss: self.dismiss,text: "",image: "back"))
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
