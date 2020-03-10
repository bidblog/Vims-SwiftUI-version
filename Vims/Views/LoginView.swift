//
//  LoginView.swift
//  Vims
//
//  Created by Henrik Gregersen on 03/03/2020.
//  Copyright © 2020 bidblog. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @EnvironmentObject var userSession : UserSession
    
    @State private var userName : String = ""
    @State private var userPassword : String = ""
    
    private var notReadyForLogin : Bool {
        return self.userName.isEmpty || self.userPassword.isEmpty
    }
    
    private var buttonColor : Color {
        if self.notReadyForLogin {
            return Color.brandLightGray
        }
        
        return Color.brandAction
    }
    
    var body: some View {
        
        VStack {
            HStack {
                Text ("Log ind").font(.title)
                Spacer()
            }.padding()
            
            
            HStack {
                VStack {
                    
                    TextField("Brugernavn",
                              text: $userName) {
                                self.userSession.logIn(UserAuth(userName: self.userName, password: self.userPassword))
                    }.textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                        .padding(.top, 40)
                    
                    /*
                     TextField("Brugernavn", text: $userName).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                     .padding(.top, 40)
                     */
                    
                    SecureField("Password", text: $userPassword).textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                    
                    Button(action: {
                        self.userSession.logIn(UserAuth(userName: self.userName, password: self.userPassword))
                        
                    }) {
                        Text ("Log ind")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding([.leading, .trailing], 100)
                            .padding([.top, .bottom], 10)
                            .background(buttonColor)
                            .cornerRadius(5.0)
                            .shadow(radius: 4.0)
                            .padding(.bottom, 50)
                        
                    }.disabled(self.notReadyForLogin)
                    
                }.background(Color.brandLightGray)
                    .cornerRadius(25.0)
                
            }.padding([.leading, .trailing])
            
            
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    
    static let userSession = UserSession()
    
    static var previews: some View {
        LoginView().environmentObject(userSession)
    }
}
